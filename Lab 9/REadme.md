# Lab 9: Program to Implement the Booth Algorithm

## Objective

* Understand the Booth multiplication algorithm for signed binary numbers.
* Implement the Booth algorithm in Python.
* Verify the multiplication result using sample test cases.

## Theory

Booth's Algorithm is an efficient method for multiplying signed binary numbers represented in two's complement form. Instead of performing addition for every `1` in the multiplier, it examines the pair of bits `(Q₀, Q₋₁)` to determine whether to add, subtract, or perform no operation. After each operation, an arithmetic right shift is carried out. This process continues for all bits of the multiplier, producing the final signed multiplication result.

## Algorithm

1. Initialize:

   * Accumulator (A) = 0
   * Multiplier (Q)
   * Multiplicand (M)
   * Extra bit (Q₋₁) = 0
2. Check the pair `(Q₀, Q₋₁)`:

   * `00` or `11` → No operation
   * `01` → A = A + M
   * `10` → A = A − M
3. Perform an arithmetic right shift on `[A, Q, Q₋₁]`.
4. Repeat the process for all bits.
5. Combine `A` and `Q` to obtain the final product.

## Output

```
Please enter your Multiplicand: 9
Please enter your Multiplier: -9

Step  Operation          A         Q  Q-1
init            00000000  11110111  0
1     A - M     11111011  11111011  1
2     no-op     11111101  11111101  1
3     no-op     11111110  11111110  1
4     A + M     00000011  11111111  0
5     A - M     11111101  01111111  1
6     no-op     11111110  10111111  1
7     no-op     11111111  01011111  1
8     no-op     11111111  10101111  1

Decimal Result: -81
Verification (m*q): -81
```

## Discussion

The Booth algorithm efficiently performs signed binary multiplication by reducing unnecessary addition and subtraction operations. It supports both positive and negative numbers using two's complement representation. The output obtained from the program matches Python's normal multiplication result, confirming the correctness of the implementation.

## Conclusion

The Booth Algorithm was successfully implemented in Python. The program correctly multiplies signed binary numbers and produces accurate results. This experiment demonstrates an efficient multiplication technique commonly used in computer architecture.
