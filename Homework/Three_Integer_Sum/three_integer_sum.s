// TODO.01: set alignment for 4 byte boundary
// TODO.02: create the section for read only data

// TODO.04: create pattern label using .asciz to read in three unsigned integers with scanf using %u specifier
// TODO.05: create prompt label using .asciz directive with the prompt text given in example test runs
// TODO.06: create response1 label using .asciz displaying the three unsigned integer values without a newline
// TODO.07: create response2 label using .asciz displaying the sum of the three unsigned integer with a newline

// TODO.09: set alignment for 4 byte boundary
// TODO.10: create the section for data (this is our non constant data)

// TODO.12: create value1 label using .word directive and initialize to 0
// TODO.13: create value2 label using .word directive and initialize to 0
// TODO.14: create value3 label using .word directive and initialize to 0

// TODO.16: set alignment for 4 byte boundary
// TODO.17: create the section for text (this is our program code section)
// TODO.18: create the global directive for main function
// TODO.19: create label for main function
// TODO.20: save the LR register by using the push pseudo-instruction
// TODO.21: load into register R4 the address of value1 (R4 will be our "pointer" to value1)
// TODO.22: load into register R5 the address of value2 (R5 will be our "pointer" to value1)
// TODO.23: load into register R6 the address of value3 (R6 will be our "pointer" to value1)

// TODO.25: load into register R0 the address of prompt label
// TODO.26: call printf to output our prompt

// TODO.28: load into R0 the address of our format string label named pattern
// TODO.29: move a copy of R4 into R1 for R1 to contain the pointer to value1
// TODO.29: move a copy of R5 into R2 for R2 to contain the pointer to value2
// TODO.29: move a copy of R6 into R3 for R3 to contain the pointer to value3
// TODO.30: call the scanf function

	// sum up the integers
// TODO.35: load into R1 the dereference pointer in R4 so R1 holds the value stored in value1
// TODO.36: load into R2 the dereference pointer in R5 so R2 holds the value stored in value2
// TODO.37: load into R3 the dereference pointer in R6 so R3 holds the value stored in value3

// TODO.39: add R1 and R2, storing the result in R4
// TODO.40: add R4 and R3, storing the result in R4

// TODO.42: load into R0 the address of response1 label
// TODO.43: call printf function to output our response1 data (should be our three user input values)

// TODO.45: load into R0 the address of response2 label
// TODO.46: move a copy of R4 into R1, since response2 format string needs sum to be in R1 with printf call
// TODO.47: call printf function to output our response2 data (should be our sum)

// TODO.49: move into R0 the exit code 0 to signal program terminated normally
// TODO.50: restore the original LR value into PC register with pop pseudo-instruction
