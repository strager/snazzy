import subprocess
import sys
import typing
import unittest


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


def simulate() -> typing.List[Buttons]:
    output = subprocess.check_output(
        [
            "java",
            "-jar",
            r"C:\Users\strager\Downloads\logisim-evolution-3.3.1.jar",
            "-tty",
            "table",
            "snazzy.circ",
        ],
        encoding="utf-8",
    )
    samples = parse_samples(output)
    payloads = parse_payloads(samples)
    return [extract_buttons_from_payload(payload) for payload in payloads]


def main() -> None:
    expected_buttons = Buttons(
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

    ok = True
    for poll_index, actual_buttons in enumerate(simulate()):
        if expected_buttons != actual_buttons:
            sys.stderr.write(
                f"error: mismatch between expected and observed buttons on poll #{poll_index}:\n"
            )
            sys.stderr.write(f"expected: {expected_buttons}\n")
            sys.stderr.write(f"observed: {actual_buttons}\n")
            ok = False

    if not ok:
        exit(1)


if __name__ == "__main__":
    main()
