# Julia Integer Overflow Bug
This repository demonstrates a potential integer overflow bug in a simple Julia function.  The function `myfunction` squares positive inputs and negates negative inputs.  However, for very large negative inputs, the negation could lead to an integer overflow.

## Bug Description
The bug lies in the handling of negative numbers in the `myfunction`. If a negative number with a magnitude larger than the maximum representable integer is passed as input,  `-x` can cause an overflow.

## Solution
The provided solution uses `Int64` to handle larger numbers and mitigate the risk of overflow.  However, for extremely large inputs, even `Int64` might be insufficient.  Consider using arbitrary-precision integers (e.g., using the `BigInt` type from Julia's standard library) if dealing with numbers that exceed the limitations of `Int64`.