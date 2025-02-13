# VHDL 4-bit Multiplier with Overflow Handling

This repository contains a VHDL code example for a 4-bit unsigned multiplier and demonstrates how to address potential overflow issues. The original code lacks proper overflow handling, resulting in incorrect multiplication for certain inputs. The improved solution provides a robust implementation.

## Bug Description
The original VHDL code performs 4-bit unsigned multiplication. However, the product of two 4-bit numbers can potentially exceed 8 bits.  The original code does not handle this scenario properly, leading to truncated results which are incorrect.

## Solution
The solution addresses the overflow issue by:

1. **Checking for Overflow:** Before performing the multiplication, the code checks if the result will exceed 8 bits. 
2. **Overflow Handling:** If overflow is detected, the solution provides a means to handle this condition (e.g., saturating the result or generating an overflow flag). 

## Files

* `bug.vhdl`:  Original VHDL code with overflow problem.
* `bugSolution.vhdl`: Improved VHDL code with overflow handling.