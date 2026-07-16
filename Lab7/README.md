Lab 7: VHDL Implementation of Sequential Circuits – Flip-Flops
Objective
To design and implement SR, D, JK, and T Flip-Flops using VHDL.
To simulate the operation of each flip-flop using a testbench.
To understand the significance of the clock signal in sequential circuits.
To verify the behavior of each flip-flop through simulation waveforms.
Theory

Sequential circuits differ from combinational circuits because their outputs depend on both the present inputs and the previously stored state. The fundamental storage element used in sequential logic is the flip-flop, which stores one bit of binary information.

Unlike combinational circuits, flip-flops change their outputs only when triggered by a clock signal, usually on the rising edge of the clock. This synchronization ensures reliable and predictable operation in digital systems.

1. SR Flip-Flop

The Set-Reset (SR) Flip-Flop is the simplest sequential storage element. It has two inputs:

S (Set): Sets the output to logic '1'.
R (Reset): Resets the output to logic '0'.

When both inputs are low, the flip-flop retains its previous state. When both inputs are high simultaneously, the condition becomes invalid or forbidden because the output cannot be determined reliably.

Truth Table
S	R	Q (Next State)	Description
0	0	Q	No change
0	1	0	Reset
1	0	1	Set
1	1	X	Forbidden state
2. D Flip-Flop

The Data (D) Flip-Flop is designed to eliminate the invalid state of the SR flip-flop. It has a single data input (D) and copies this input to the output on the rising edge of the clock.

Characteristic Equation

Q
next
	​

=D

This flip-flop is widely used in registers, memory devices, and digital storage applications.

3. JK Flip-Flop

The JK Flip-Flop is an improved version of the SR flip-flop. It removes the forbidden input condition and introduces a toggle operation when both inputs are high.

Operation
J	K	Q (Next State)	Description
0	0	Q	No change
0	1	0	Reset
1	0	1	Set
1	1	Q̅	Toggle

The JK flip-flop is commonly used in counters, shift registers, and sequential control circuits.

4. T Flip-Flop

The Toggle (T) Flip-Flop is derived from the JK flip-flop by connecting both inputs together.

Its operation is straightforward:

When T = 0, the output remains unchanged.
When T = 1, the output toggles on every rising edge of the clock.

Characteristic Equation

Q
next
	​

=T⊕Q

where ⊕ represents the Exclusive-OR (XOR) operation.

The T flip-flop is extensively used in binary counters, frequency dividers, and timing circuits.

Output

Simulation waveforms verify the correct operation of the implemented flip-flops.

Figure: Simulation waveform of SR, D, JK, and T Flip-Flops.

(Insert GTKWave simulation output here.)

Discussion

The simulation results confirm that each flip-flop operates according to its theoretical behavior when triggered by the rising edge of the clock signal.

The SR flip-flop demonstrates the fundamental concept of sequential storage through set and reset operations while also illustrating the limitation of the forbidden input condition.

The D flip-flop provides a simpler and more reliable storage mechanism by transferring the input data directly to the output on each active clock edge. This characteristic makes it suitable for memory elements and data registers.

The JK flip-flop overcomes the limitation of the SR flip-flop by eliminating the invalid state and introducing a toggle operation when both inputs are asserted. This flexibility makes it suitable for counters and state machines.

The T flip-flop performs toggling whenever its input is high, making it an efficient building block for binary counters and frequency division circuits.

Overall, the experiment demonstrates the importance of clock synchronization in sequential circuits and highlights the functional differences among the four types of flip-flops.

Conclusion

The SR, D, JK, and T flip-flops were successfully designed, implemented, and simulated using VHDL.

The simulation results verified the expected behavior of each flip-flop under different input conditions and confirmed correct synchronization with the clock signal.

The experiment also demonstrated the distinct characteristics of each flip-flop:

SR Flip-Flop: Basic set and reset functionality with a forbidden input condition.
D Flip-Flop: Reliable single-input data storage.
JK Flip-Flop: Enhanced functionality with set, reset, hold, and toggle operations.
T Flip-Flop: Efficient toggling operation suitable for counters and frequency dividers.

These flip-flops serve as the fundamental building blocks of sequential digital systems, including registers, counters, finite state machines, memory devices, and other synchronous digital circuits.

## Output

<p align="center">
  <img src="image.png" alt="GTKWave Simulation Output" width="900">
</p>

<p align="center">
<b>Figure 7.1:</b> GTKWave simulation waveform of SR, D, JK, and T Flip-Flops.
</p>