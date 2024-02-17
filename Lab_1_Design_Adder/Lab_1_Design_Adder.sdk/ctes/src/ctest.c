#include <stdio.h>

int main(void)
{

	//this was the old one. PLEASE LOOK AT CTESTBOARD.C








		// base address of axi_regmap as set in the Vivado address editor
		uint32_t *regmap = (uint32_t *) 0x70000000;

		//A + B, and the result is less than or equal to +2^32-1 (no Carry out).
		regmap[2]=0; //K
		regmap[0]=2147483647; //A
		regmap[1]=1; //B
		size_t r = regmap[0]; // S
		size_t t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry

		//A + B, and the result is greater than +2^32-1 (Carry out).
		regmap[2]=0; //K
		regmap[0]=4294967295; //A
		regmap[1]=1; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry

		//A - B is positive (Carry out).
		regmap[2]=1; //K
		regmap[0]=3; //A
		regmap[1]=1; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry

		//A - B is zero (Carry out).
		regmap[2]=1; //K
		regmap[0]=2; //A
		regmap[1]=2; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry


		//A - B is negative (no Carry out).
		regmap[2]=1; //K
		regmap[0]=1; //A
		regmap[1]=2; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry

		//Test vector 6: Random Addition A + B
		regmap[2]=0; //K
		regmap[0]=1062643634; //A
		regmap[1]=172342481; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry


		//Test vector 7: Random Subtraction A - B
		regmap[2]=1; //K
		regmap[0]=1799686650; //A
		regmap[1]=356695182; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		printf("S =%d\n", r); //print S value
		printf("Cout =%\n", t);//print carry


	return 0;
}
