# Ada "and then" Short-Circuiting Bug

This repository demonstrates a potential issue related to Ada's `and then` short-circuiting operator when used within range checks. The bug arises from the operator's behavior when the left-hand operand of the conditional expression evaluates to `False`. In such cases, the right-hand operand is not evaluated, potentially leading to unexpected results or unnoticed errors, especially in range-checking scenarios.

## Bug Description

The primary issue lies in the `Check_Range` function.  When the input `Num` is outside the range [10,20], the `and then` operator will prevent evaluation of the second part of the condition, which might mask the possibility of errors.  This can lead to difficulties in debugging. Specifically when dealing with range checking conditions that might include more complex functions or variable access.  Such issues can be subtle, particularly in larger and more complicated Ada projects.

## Solution

The solution involves replacing the `and then` operator with the standard `and` operator in the range check.  This ensures that both conditions are always evaluated, providing a more robust and predictable behavior.

## How to reproduce

1.  Compile the `bug.ada` file using an Ada compiler (e.g., GNAT).
2. Run the compiled executable.
3. Note that even if the number is out of range on the first check, the second is not evaluated. 