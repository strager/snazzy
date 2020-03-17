import io
import pathlib
import subprocess
import sys
import tempfile
import typing
import unittest
import xml.etree.ElementTree as ElementTree


class Sample(typing.NamedTuple):
    clack: bool
    data1: bool
    latch: bool


def parse_samples(output: str) -> typing.List[Sample]:
    samples = []
    for line in output.splitlines():
        cells = [bool(int(raw_cell)) for raw_cell in line.split("\t")]
        samples.append(Sample(clack=cells[1], data1=cells[0], latch=cells[2]))
    return samples


class TestParseSamples(unittest.TestCase):
    def test_one_sample(self) -> None:
        samples = parse_samples("1\t1\t0\r\n")
        self.assertEqual(samples, [Sample(data1=True, clack=True, latch=False),])

    def test_many_samples(self) -> None:
        output = (
            "\r\n".join(
                ("1\t1\t0", "1\t1\t1", "1\t1\t0", "1\t0\t0", "0\t0\t0", "0\t1\t0",)
            )
            + "\r\n"
        )
        samples = parse_samples(output)
        self.assertEqual(
            samples,
            [
                Sample(data1=True, clack=True, latch=False),
                Sample(data1=True, clack=True, latch=True),
                Sample(data1=True, clack=True, latch=False),
                Sample(data1=True, clack=False, latch=False),
                Sample(data1=False, clack=False, latch=False),
                Sample(data1=False, clack=True, latch=False),
            ],
        )


def flatten_1(list_of_lists: typing.Sequence[typing.Sequence]) -> typing.List:
    result = []
    for list in list_of_lists:
        result.extend(list)
    return result


class TestParsePayload(unittest.TestCase):
    def test_parse_complete_payload(self) -> None:
        # The following payload is arbitrary.
        payload_bits = [True, True, False, True] * 4

        samples = [
            Sample(data1=True, clack=True, latch=True),
            Sample(data1=True, clack=True, latch=False),
        ] + flatten_1(
            [
                [
                    Sample(data1=bit, clack=True, latch=False),
                    Sample(data1=bit, clack=False, latch=False),
                ]
                for bit in payload_bits
            ]
        )

        payloads = parse_payloads(samples)
        self.assertEqual(payloads, [payload_bits])

    def test_parse_two_partial_payloads(self) -> None:
        # The following payload is arbitrary.
        payload_1_bits = [True, False, True]
        payload_2_bits = [False, True, False]

        samples = []

        samples.extend(
            (
                Sample(data1=True, clack=True, latch=True),
                Sample(data1=True, clack=True, latch=False),
            )
        )
        samples.extend(
            flatten_1(
                [
                    [
                        Sample(data1=bit, clack=True, latch=False),
                        Sample(data1=bit, clack=False, latch=False),
                    ]
                    for bit in payload_1_bits
                ]
            )
        )
        samples.extend(
            (
                Sample(data1=True, clack=True, latch=False),
                Sample(data1=True, clack=True, latch=False),
            )
        )

        samples.extend(
            (
                Sample(data1=True, clack=True, latch=True),
                Sample(data1=True, clack=True, latch=False),
            )
        )
        samples.extend(
            flatten_1(
                [
                    [
                        Sample(data1=bit, clack=True, latch=False),
                        Sample(data1=bit, clack=False, latch=False),
                    ]
                    for bit in payload_2_bits
                ]
            )
        )
        samples.extend(
            (
                Sample(data1=True, clack=True, latch=False),
                Sample(data1=True, clack=True, latch=False),
            )
        )

        payloads = parse_payloads(samples)
        self.assertEqual(payloads, [payload_1_bits, payload_2_bits])


class Buttons(typing.NamedTuple):
    b: typing.Optional[bool]
    y: typing.Optional[bool]
    select: typing.Optional[bool]
    start: typing.Optional[bool]
    up: typing.Optional[bool]
    down: typing.Optional[bool]
    left: typing.Optional[bool]
    right: typing.Optional[bool]
    a: typing.Optional[bool]
    x: typing.Optional[bool]
    l: typing.Optional[bool]
    r: typing.Optional[bool]
    unused_12: typing.Optional[bool]
    unused_13: typing.Optional[bool]
    unused_14: typing.Optional[bool]
    unused_15: typing.Optional[bool]

    def __str__(self) -> str:
        on = "abxylr<v^>Ss~~~~"
        off = "____________----"
        states = [
            self.a,
            self.b,
            self.x,
            self.y,
            self.l,
            self.r,
            self.left,
            self.down,
            self.up,
            self.right,
            self.start,
            self.select,
            self.unused_12,
            self.unused_13,
            self.unused_14,
            self.unused_15,
        ]
        result = ""
        for i, state in enumerate(states):
            result += (on if state else off)[i]
        return result


Buttons.OFF = Buttons(
    start=False,
    select=False,
    b=False,
    y=False,
    up=False,
    down=False,
    left=False,
    right=False,
    a=False,
    x=False,
    l=False,
    r=False,
    unused_12=False,
    unused_13=False,
    unused_14=False,
    unused_15=False,
)


def extract_buttons_from_payload(payload: typing.List[bool]) -> Buttons:
    def bit(index: int) -> typing.Optional[bool]:
        return not payload[index]

    return Buttons(
        b=bit(0),
        y=bit(1),
        select=bit(2),
        start=bit(3),
        up=bit(4),
        down=bit(5),
        left=bit(6),
        right=bit(7),
        a=bit(8),
        x=bit(9),
        l=bit(10),
        r=bit(11),
        unused_12=bit(12),
        unused_13=bit(13),
        unused_14=bit(14),
        unused_15=bit(15),
    )


class TestButtons(unittest.TestCase):
    def test_stringify_buttons(self) -> None:
        self.assertEqual(
            str(
                Buttons(
                    b=False,
                    y=False,
                    select=False,
                    start=False,
                    up=False,
                    down=False,
                    left=False,
                    right=False,
                    a=False,
                    x=False,
                    l=False,
                    r=False,
                    unused_12=False,
                    unused_13=False,
                    unused_14=False,
                    unused_15=False,
                )
            ),
            "____________----",
        )

        self.assertEqual(
            str(
                Buttons(
                    b=True,
                    y=True,
                    select=True,
                    start=True,
                    up=True,
                    down=True,
                    left=True,
                    right=True,
                    a=True,
                    x=True,
                    l=True,
                    r=True,
                    unused_12=True,
                    unused_13=True,
                    unused_14=True,
                    unused_15=True,
                )
            ),
            "abxylr<v^>Ss~~~~",
        )


class TestExtractButtonsFromPayload(unittest.TestCase):
    def test_full_set_of_buttons(self) -> None:
        for b in [True, False]:
            for select in [True, False]:
                for r in [True, False]:
                    input_buttons = Buttons(
                        b=b,
                        y=False,
                        select=select,
                        start=False,
                        up=False,
                        down=False,
                        left=False,
                        right=False,
                        a=False,
                        x=False,
                        l=False,
                        r=r,
                        unused_12=False,
                        unused_13=False,
                        unused_14=False,
                        unused_15=False,
                    )
                    payload = [
                        not input_buttons.b,
                        not input_buttons.y,
                        not input_buttons.select,
                        not input_buttons.start,
                        not input_buttons.up,
                        not input_buttons.down,
                        not input_buttons.left,
                        not input_buttons.right,
                        not input_buttons.a,
                        not input_buttons.x,
                        not input_buttons.l,
                        not input_buttons.r,
                        not input_buttons.unused_12,
                        not input_buttons.unused_13,
                        not input_buttons.unused_14,
                        not input_buttons.unused_15,
                    ]
                    extracted_buttons = extract_buttons_from_payload(payload)
                    self.assertEqual(extracted_buttons.b, input_buttons.b)
                    self.assertEqual(extracted_buttons.b, input_buttons.b)
                    self.assertEqual(extracted_buttons.y, input_buttons.y)
                    self.assertEqual(extracted_buttons.select, input_buttons.select)
                    self.assertEqual(extracted_buttons.start, input_buttons.start)
                    self.assertEqual(extracted_buttons.up, input_buttons.up)
                    self.assertEqual(extracted_buttons.down, input_buttons.down)
                    self.assertEqual(extracted_buttons.left, input_buttons.left)
                    self.assertEqual(extracted_buttons.right, input_buttons.right)
                    self.assertEqual(extracted_buttons.a, input_buttons.a)
                    self.assertEqual(extracted_buttons.x, input_buttons.x)
                    self.assertEqual(extracted_buttons.l, input_buttons.l)
                    self.assertEqual(extracted_buttons.r, input_buttons.r)
                    self.assertEqual(
                        extracted_buttons.unused_12, input_buttons.unused_12
                    )
                    self.assertEqual(
                        extracted_buttons.unused_13, input_buttons.unused_13
                    )
                    self.assertEqual(
                        extracted_buttons.unused_14, input_buttons.unused_14
                    )
                    self.assertEqual(
                        extracted_buttons.unused_15, input_buttons.unused_15
                    )


Payload = typing.List[bool]


def parse_payloads(samples: typing.List[Sample]) -> typing.List[Payload]:
    payloads = []
    current_payload = []

    def flush_current_payload() -> None:
        nonlocal current_payload
        if current_payload:
            payloads.append(current_payload)
        current_payload = []

    for sample in samples:
        if sample.latch:
            flush_current_payload()
        if not sample.clack:
            current_payload.append(sample.data1)
    flush_current_payload()
    return payloads


def simulate(buttons: Buttons) -> typing.List[Buttons]:
    buttons_circuit_xml = make_buttons_circuit(buttons)
    with tempfile.TemporaryDirectory() as temporary_directory:
        buttons_circuit_path = pathlib.Path(temporary_directory) / "buttons.circ"
        buttons_circuit_path.write_text(buttons_circuit_xml)
        output = subprocess.check_output(
            [
                "java",
                "-jar",
                r"C:\Users\strager\Downloads\logisim-evolution-3.3.1.jar",
                "-tty",
                "table",
                "-sub",
                "buttons.circ",
                str(buttons_circuit_path),
                "snazzy.circ",
            ],
            encoding="utf-8",
        )
    samples = parse_samples(output)
    payloads = parse_payloads(samples)
    return [extract_buttons_from_payload(payload) for payload in payloads]


def make_buttons_circuit(buttons: Buttons) -> str:
    tree = ElementTree.parse("buttons.circ")

    component_to_button_state = {
        "start_button": buttons.start,
        "select_button": buttons.select,
        "b_button": buttons.b,
        "y_button": buttons.y,
        "up_button": buttons.up,
        "down_button": buttons.down,
        "left_button": buttons.left,
        "right_button": buttons.right,
        "a_button": buttons.a,
        "x_button": buttons.x,
        "l_button": buttons.l,
        "r_button": buttons.r,
    }

    for component_label, button_state in component_to_button_state.items():
        constant_node = CircuitXML.get_constant_component_of_pin_component(
            tree, component_label
        )
        value_node = constant_node.find(".//a[@name='value']")
        if button_state:
            if value_node is None:
                # 1 is the default value. Do nothing.
                pass
            else:
                value_node.set("val", "0x1")
        else:
            if value_node is None:
                ElementTree.SubElement(
                    constant_node, "a", {"name": "value", "val": "0x0",}
                )
            else:
                value_node.set("val", "0x0")

    result_file = io.BytesIO()
    encoding = "utf-8"
    tree.write(result_file, encoding=encoding)
    return result_file.getvalue().decode(encoding)


class TestMakeButtonsCircuit(unittest.TestCase):
    def test_all_buttons_off(self) -> None:
        buttons = Buttons(
            start=False,
            select=False,
            b=False,
            y=False,
            up=False,
            down=False,
            left=False,
            right=False,
            a=False,
            x=False,
            l=False,
            r=False,
            unused_12=False,
            unused_13=False,
            unused_14=False,
            unused_15=False,
        )
        circuit_xml = make_buttons_circuit(buttons)
        self.assert_circuit_has_buttons(circuit_xml, buttons)

    def test_all_buttons_on(self) -> None:
        buttons = Buttons(
            start=True,
            select=True,
            b=True,
            y=True,
            up=True,
            down=True,
            left=True,
            right=True,
            a=True,
            x=True,
            l=True,
            r=True,
            unused_12=False,
            unused_13=False,
            unused_14=False,
            unused_15=False,
        )
        circuit_xml = make_buttons_circuit(buttons)
        self.assert_circuit_has_buttons(circuit_xml, buttons)

    def assert_circuit_has_buttons(
        self, circuit_xml: str, expected_buttons: Buttons
    ) -> None:
        tree = ElementTree.fromstring(circuit_xml)

        def get(pin_label: str) -> int:
            return CircuitXML.get_constant_value_of_pin_component(tree, pin_label)

        self.assertEqual(get("start_button"), int(expected_buttons.start))
        self.assertEqual(get("select_button"), int(expected_buttons.select))
        self.assertEqual(get("b_button"), int(expected_buttons.b))
        self.assertEqual(get("y_button"), int(expected_buttons.y))
        self.assertEqual(get("up_button"), int(expected_buttons.up))
        self.assertEqual(get("down_button"), int(expected_buttons.down))
        self.assertEqual(get("left_button"), int(expected_buttons.left))
        self.assertEqual(get("right_button"), int(expected_buttons.right))
        self.assertEqual(get("a_button"), int(expected_buttons.a))
        self.assertEqual(get("x_button"), int(expected_buttons.x))
        self.assertEqual(get("l_button"), int(expected_buttons.l))
        self.assertEqual(get("r_button"), int(expected_buttons.r))


class CircuitXML:
    @staticmethod
    def get_constant_value_of_pin_component(tree, pin_label: str) -> int:
        constant_node = CircuitXML.get_constant_component_of_pin_component(
            tree, pin_label
        )
        return CircuitXML.get_value_of_constant_component(constant_node)

    @staticmethod
    def get_constant_component_of_pin_component(tree, pin_label: str):
        pin_node = CircuitXML.find_pin_component_with_label(tree, pin_label)
        if pin_node is None:
            raise Error(f"{pin_label} pin component is missing")
        pin_location = pin_node.get("loc")
        if pin_location is None:
            raise Error(
                f"{pin_label} pin component is missing a location ('loc' attribute)"
            )
        constant_node = CircuitXML.find_constant_component_at_location(
            tree, pin_location
        )
        if constant_node is None:
            raise Error(
                f"{pin_label} pin component has no corresponding constant component (at location {pin_location})"
            )
        return constant_node

    @staticmethod
    def find_pin_component_with_label(tree, label: str) -> typing.Optional:
        for pin_node in tree.findall(".//comp[@name='Pin']"):
            label_node = pin_node.find(".//a[@name='label']")
            if label_node is not None:
                if label_node.get("val") == label:
                    return pin_node
        return None

    @staticmethod
    def find_constant_component_at_location(tree, location: str) -> typing.Optional:
        for constant_node in tree.findall(".//comp[@name='Constant']"):
            if constant_node.get("loc") == location:
                return constant_node
        return None

    @staticmethod
    def get_value_of_constant_component(constant_node) -> int:
        value_node = constant_node.find(".//a[@name='value']")
        if value_node is None:
            return 1
        else:
            return int(value_node.get("val"), 16)


def main() -> None:
    buttons_to_check = [
        "b",
        "y",
        "select",
        "start",
        "up",
        "down",
        "left",
        "right",
        "a",
        "x",
        "l",
        "r",
    ]
    for button_to_check in buttons_to_check:
        buttons = Buttons.OFF._replace(**{button_to_check: True})
        check_buttons(buttons)

    # Prevent opposite directional inputs (left+right, up+down).
    check_buttons(
        input_buttons=Buttons.OFF._replace(left=True, right=True),
        expected_buttons=Buttons.OFF._replace(left=False, right=False),
    )
    check_buttons(
        input_buttons=Buttons.OFF._replace(up=True, down=True),
        expected_buttons=Buttons.OFF._replace(up=False, down=False),
    )

    check_buttons(
        Buttons(
            start=True,
            select=True,
            b=False,
            y=False,
            up=False,
            down=False,
            left=False,
            right=False,
            a=False,
            x=False,
            l=False,
            r=False,
            unused_12=False,
            unused_13=False,
            unused_14=False,
            unused_15=False,
        )
    )
    check_buttons(
        Buttons(
            start=False,
            select=False,
            b=True,
            y=False,
            up=False,
            down=False,
            left=True,
            right=False,
            a=False,
            x=False,
            l=False,
            r=False,
            unused_12=False,
            unused_13=False,
            unused_14=False,
            unused_15=False,
        )
    )


def check_buttons(
    input_buttons: Buttons, expected_buttons: typing.Optional[Buttons] = None
) -> None:
    if expected_buttons is None:
        expected_buttons = input_buttons
    for poll_index, actual_buttons in enumerate(simulate(input_buttons)):
        assert_buttons(
            expected_buttons=expected_buttons,
            actual_buttons=actual_buttons,
            poll_index=poll_index,
        )


def assert_buttons(
    expected_buttons: Buttons, actual_buttons: Buttons, poll_index: int
) -> None:
    if expected_buttons != actual_buttons:
        sys.stderr.write(
            f"error: mismatch between expected and observed buttons on poll #{poll_index}:\n"
        )
        sys.stderr.write(f"expected: {expected_buttons}\n")
        sys.stderr.write(f"observed: {actual_buttons}\n")
        exit(1)


if __name__ == "__main__":
    main()
