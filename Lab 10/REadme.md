# Lab 10: Program to Implement the Non-Restoring Division Algorithm

## Objective

* Understand the Non-Restoring Division algorithm for unsigned binary numbers.
* Implement the algorithm using Python.
* Verify the quotient and remainder with test cases.

## Theory

The Non-Restoring Division Algorithm is an efficient method for dividing unsigned binary numbers. Unlike the restoring division algorithm, it does not restore the partial remainder after every negative result. Instead, it performs addition or subtraction based on the sign of the partial remainder and applies a final correction if required. This reduces the number of arithmetic operations and improves efficiency.

## Algorithm

1. Initialize:

   * Partial remainder (A) = 0
   * Dividend in Q
   * Divisor in M
2. Repeat for all bits:

   * Left shift the combined registers `[A, Q]`.
   * If `A ≥ 0`, perform `A = A − M`; otherwise, perform `A = A + M`.
   * Update the least significant bit of `Q`:

     * `A ≥ 0` → `Q₀ = 1`
     * `A < 0` → `Q₀ = 0`
3. After all iterations, if `A < 0`, add the divisor to correct the remainder.
4. The final values of `Q` and `A` represent the quotient and remainder.

## Output

```text
Enter Dividend (Decimal): 88
Enter Divisor (Decimal): 8

Initial Values
A = 00000000
Q = 01011000
M = 00001000

Step 1
Shift Left & Subtract M
A = 11111000
Q = 10110000

Step 2
Shift Left & Add M
A = 11111001
Q = 01100000

Step 3
Shift Left & Add M
A = 11111010
Q = 11000000

Step 4
Shift Left & Add M
A = 11111101
Q = 10000000

Step 5
Shift Left & Add M
A = 00000011
Q = 00000001

Step 6
Shift Left & Subtract M
A = 11111110
Q = 00000010

Step 7
Shift Left & Add M
A = 00000100
Q = 00000101

Step 8
Shift Left & Subtract M
A = 00000000
Q = 00001011

-----------------------------------
Binary Quotient : 00001011
Decimal Quotient: 11
Binary Remainder: 00000000
Decimal Remainder: 0
```

## Discussion

The Non-Restoring Division algorithm efficiently performs binary division by avoiding repeated restoration of the partial remainder. The program updates the partial remainder and quotient during each iteration and applies a final correction only when necessary. The quotient and remainder obtained match the results of standard division, confirming the correctness of the implementation.

## Conclusion

The Non-Restoring Division Algorithm was successfully implemented in Python. The program correctly computes the quotient and remainder for unsigned binary division while reducing unnecessary operations. This experiment provides a practical understanding of an efficient division technique used in computer architecture.
