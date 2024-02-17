#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include <stdio.h>
#include "sleep.h"

#define BRAM_DEPTH 16
#define BRAM_CONTROLLER_ADDR 0x41000000
#define LAB_CPU_ADDR         0x40000000

// Instruction memory for program 1
// Forcing a program (instruction memory) and the rest initialized to zero

// addi $7, $0, 17
// addi $11, $0, -3
// and $11, $7, $11
// sw $11, 15($7)

uint32_t program0[] = {
	0x20070011, 0x200BFFFD, 0x00EB5824, 0xACEB000F,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000011, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program1[] = {
	0x20070011, 0x200BFFFD, 0x00EB5822, 0xaceb000f,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000014, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program2[] = {
	0x20070011, 0x200BFFFD, 0x00EB5821, 0xaceb000f,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x0000000E, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program3[] = {
	0x20070011, 0x200BFFFD, 0x00075843, 0xaceb000f,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000008, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program4[] = {
	0x20070011, 0x200BFFFD, 0x00E75804, 0xaceb000f,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00220000, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program5[] = {
	0x20070011, 0x200BFFFD, 0x28EB003F, 0xACEB000F,
	0x00000000, 0x00000000, 0x00000000, 0x00000000,
	0x00000001, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program6[] = {
	0x20070011, 0x200BFFFD, 0x15670003, 0x20010002,
	0x00000000, 0x00000000, 0x20010001, 0xACE1000F,
	0x00000001, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program7[] = {
	0x3C011001, 0x342D0020, 0x3C010123, 0x34294567,
	0xADA90000, 0x85AB0002, 0xADAB0010, 0x00000000,
	0x01234567, 0x00000000, 0x00000000, 0x00000000,
	0x00000123, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program8[] = {
	0x3C011001, 0x342D0020, 0x2009FFD3, 0x71205021,
	0xADAA0000, 0x00000000, 0x00000000, 0x00000000,
	0x0000001A, 0x00000000, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};
uint32_t program9[] = {
	0x3C011001, 0x3403FF0F, 0xAC230020, 0x3405BBBB,
	0x00000000, 0x8C220020, 0x00452024, 0xAC240024,
	0x0000ff0f, 0x0000bb0b, 0x00000000, 0x00000000,
	0x00000000, 0x00000000, 0x00000000, 0x00000000
};

// function prototype to run the program
void run_program(uint32_t *program);

int main(void) {
	printf("-------------------------------------\n");

	printf("\nRunning PROGRAM 1\n");
	run_program(program0);
	run_program(program1);
	run_program(program2);
	run_program(program3);
	run_program(program4);
	run_program(program5);
	run_program(program6);
	run_program(program7);
	run_program(program8);
	run_program(program9);
}

void run_program(uint32_t *program) {
	
	//defiing pointers for bram controller (bram_ptr) and the RegMap (cpu_ptr)
	uint32_t * bram_ptr = (uint32_t *)BRAM_CONTROLLER_ADDR;
	uint32_t * cpu_ptr  = (uint32_t *)LAB_CPU_ADDR;

	// assert cpu reset
	cpu_ptr[0] = 1;

	// initialize instruction memory
	for (int i = 0; i < BRAM_DEPTH; ++i) {
		bram_ptr[i] = program[i];
	}

	// one way to test for correctness, is to print the memory content before and after the execution.
	// feel free to do this as you see fit.

	// print memory contents
	printf("Memory Contents (BEFORE)\n");
	for (int i = 0; i < BRAM_DEPTH; ++i) {
		printf("%2d : 0x%08X   ", i, (unsigned int)bram_ptr[i]);

		// print 2 columns per line
		if (i % 2 == 1) {
			printf("\n");
		}
	}

	// deassert cpu reset
	cpu_ptr[0] = 0;

	// cpu execution will very likely finish faster than a read to bram_ptr through AXI-LITE
	// interface, but just in case you came up with a long program, you might wanna try one of
	// the following:
	//
	// 1. add a delay loop from some time, may be a second or so.
	// 2. poll a memory location that you will change by the end of your program execution. 
	for (int i=0; i<99999; i++)
	{
	}


	// print memory contents
	printf("Memory Contents (AFTER)\n");
	for (int i = 0; i < BRAM_DEPTH; ++i) {
		printf("%2d : 0x%08X   ", i, (unsigned int)bram_ptr[i]);

		// print 2 columns per line
		if (i % 2 == 1) {
			printf("\n");
		}
	}
}
