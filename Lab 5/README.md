# 2-Bit Comparator using VHDL

## Objective

Design and simulate a **2-bit Magnitude Comparator** using VHDL. The comparator compares two 2-bit binary inputs and determines whether:

- A = B
- A > B
- A < B

The design is verified through a VHDL testbench using GHDL and GTKWave.

---

## Theory

A magnitude comparator is a combinational digital circuit used to compare two binary numbers.

For two 2-bit inputs:

- A = A1A0
- B = B1B0

The comparator produces three outputs:

| Output | Description |
|---------|-------------|
| EQ | High when A = B |
| GT | High when A > B |
| LT | High when A < B |

Only **one output becomes HIGH** at any time.

---

## Truth Table

| A | B | EQ | GT | LT |
|---|---|----|----|----|
|00|00|1|0|0|
|00|01|0|0|1|
|01|00|0|1|0|
|01|01|1|0|0|
|10|11|0|0|1|
|11|10|0|1|0|
|11|11|1|0|0|

---

## Files

```
COMPARATOR_2BIT.vhd
COMPARATOR_TB.vhd
```

- **COMPARATOR_2BIT.vhd** → Comparator design
- **COMPARATOR_TB.vhd** → Testbench for simulation

---

## Working

The comparator continuously monitors inputs **A** and **B**.

### Case 1: A = B

```
EQ = 1
GT = 0
LT = 0
```

### Case 2: A > B

```
EQ = 0
GT = 1
LT = 0
```

### Case 3: A < B

```
EQ = 0
GT = 0
LT = 1
```

The comparison is performed using the **unsigned()** function from the **NUMERIC_STD** library.

---

## Simulation Steps (GHDL)

Analyze the files:

```bash
ghdl -a COMPARATOR_2BIT.vhd
ghdl -a COMPARATOR_TB.vhd
```

Elaborate:

```bash
ghdl -e COMPARATOR_TB
```

Run simulation:

```bash
ghdl -r COMPARATOR_TB --vcd=comparator.vcd
```

Open waveform:

```bash
gtkwave comparator.vcd
```

---

## Test Cases

| Test No. | A | B | Expected Output |
|----------|---|---|----------------|
|1|00|00|EQ = 1|
|2|01|00|GT = 1|
|3|00|01|LT = 1|
|4|10|11|LT = 1|
|5|11|10|GT = 1|
|6|11|11|EQ = 1|

---

## Expected Waveform

Time(ns) | A | B | EQ | GT | LT
---------|---|---|----|----|----
0 |00|00|1|0|0
10|01|00|0|1|0
20|00|01|0|0|1
30|10|11|0|0|1
40|11|10|0|1|0
50|11|11|1|0|0

---

## Applications

- CPU and ALU design
- Digital comparison circuits
- Embedded systems
- Control units
- Arithmetic logic operations
- Digital signal processing

---

## Result

The VHDL implementation of the **2-bit Magnitude Comparator** was successfully simulated. The outputs correctly indicated whether **A = B**, **A > B**, or **A < B** for all test cases, confirming the correct operation of the design.