.align 4    		// TODO.01: set alignment for 4 byte boundary
.section .rodata	// TODO.02: create the section for read only data

pattern: .asciz "%u %u %u"	// TODO.04: create pattern label using .asciz to read in three unsigned integers with scanf using %u specifier
prompt: .asciz "Hi there! Please type in three unsigned integer values (seperated by a space): "	// TODO.05: create prompt label using .asciz directive with the prompt text given in example test runs
response1: .asciz "The sum of %u, %u and %u is: "	// TODO.06: create response1 label using .asciz displaying the three unsigned integer values without a newline
response2: .asciz "%u\n"	// TODO.07: create response2 label using .asciz displaying the sum of the three unsigned integer with a newline

.align 4	// TODO.09: set alignment for 4 byte boundary
.section .data	// TODO.10: create the section for data (this is our non constant data)

value_read1: .word 0	// TODO.12: create value1 label using .word directive and initialize to 0
value_read2: .word 0	// TODO.13: create value2 label using .word directive and initialize to 0
value_read3: .word 0	// TODO.14: create value3 label using .word directive and initialize to 0

.align 4			// TODO.16: set alignment for 4 byte boundary
.text				// TODO.17: create the section for text (this is our program code section)
.global main			// TODO.18: create the global directive for main function
main:				// TODO.19: create label for main function
	push {lr}		// TODO.20: save the LR register by using the push pseudo-instruction
	ldr r4, =value_read1	// TODO.21: load into register R4 the address of value1 (R4 will be our "pointer" to value1)
	ldr r5, =value_read2	// TODO.22: load into register R5 the address of value2 (R5 will be our "pointer" to value1)
	ldr r6, =value_read3	// TODO.23: load into register R6 the address of value3 (R6 will be our "pointer" to value1)

	ldr r0, =prompt		// TODO.25: load into register R0 the address of prompt label
	bl printf		// TODO.26: call printf to output our prompt

	ldr r0, =pattern	// TODO.28: load into R0 the address of our format string label named pattern
	mov r1, r4		// TODO.29: move a copy of R4 into R1 for R1 to contain the pointer to value1
	mov r2, r5		// TODO.29: move a copy of R5 into R2 for R2 to contain the pointer to value2
	mov r3, r6		// TODO.29: move a copy of R6 into R3 for R3 to contain the pointer to value3
	bl scanf		// TODO.30: call the scanf function

				// sum up the integers
	ldr r1, [r4]		// TODO.35: load into R1 the dereference pointer in R4 so R1 holds the value stored in value1
	ldr r2, [r5]		// TODO.36: load into R2 the dereference pointer in R5 so R2 holds the value stored in value2
	ldr r3, [r6]		// TODO.37: load into R3 the dereference pointer in R6 so R3 holds the value stored in value3

	add r4, r1, r2		// TODO.39: add R1 and R2, storing the result in R4
	add r4, r4, r3		// TODO.40: add R4 and R3, storing the result in R4

	ldr r0, =response1	// TODO.42: load into R0 the address of response1 label
	bl printf		// TODO.43: call printf function to output our response1 data (should be our three user input values)

	ldr r0, =response2	// TODO.45: load into R0 the address of response2 label
	mov r1, r4		// TODO.46: move a copy of R4 into R1, since response2 format string needs sum to be in R1 with printf call
	bl printf		// TODO.47: call printf function to output our response2 data (should be our sum)

	mov r0, #0		// TODO.49: move into R0 the exit code 0 to signal program terminated normally
	pop {pc}		// TODO.50: restore the original LR value into PC register with pop pseudo-instruction
