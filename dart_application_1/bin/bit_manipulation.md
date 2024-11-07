 Key Concepts in Bit Manipulation
Binary Representation

        Every integer can be represented as a sequence of bits (0s and 1s).
        Understanding binary is foundational; for instance, 5 is 101 in binary, and 8 is 1000.
        Common Bitwise Operators

        AND (&): Sets each bit to 1 if both bits are 1. (e.g., 5 & 3 = 1, since 101 & 011 = 001)
        OR (|): Sets each bit to 1 if one of the bits is 1. (e.g., 5 | 3 = 7, since 101 | 011 = 111)
        XOR (^): Sets each bit to 1 if only one of the bits is 1. (e.g., 5 ^ 3 = 6, since 101 ^ 011 = 110)
        NOT (~): Inverts all bits (useful for two’s complement negative representation).
        Left Shift (<<): Shifts bits to the left, filling with zeros. Multiples the number by 2 each shift.
        Right Shift (>>): Shifts bits to the right. Divides the number by 2 each shift.
        Counting Set Bits (1s in Binary)

Knowing how to count the number of 1s in a binary number is useful in many bit manipulation problems.
Example methods: num & (num - 1) removes the lowest set bit in num.
Setting, Clearing, and Toggling Bits

    Set a bit: num | (1 << i) (sets the i-th bit to 1).
    Clear a bit: num & ~(1 << i) (sets the i-th bit to 0).
    Toggle a bit: num ^ (1 << i) (flips the i-th bit).
    Bit Masks

    A bitmask is a number used to clear, set, or toggle specific bits in another number. Masks can help in problems that involve subsets or permissions (e.g., keeping track of certain features in a binary format).
    Common Patterns

    Power of Two Check: (num & (num - 1)) == 0 if num is a power of two.
    Swapping Two Numbers: Use XOR: a = a ^ b; b = a ^ b; a = a ^ b;
    Reversing Bits: Reverses all bits in a number (often used in binary-related problems). 