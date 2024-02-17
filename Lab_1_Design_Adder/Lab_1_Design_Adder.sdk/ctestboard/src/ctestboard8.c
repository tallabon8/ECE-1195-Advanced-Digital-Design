#include <stdio.h>

int main(void)
{

		//THIS IS THE ACTIVE TEST CODE

		// base address of axi_regmap as set in the Vivado address editor

			uint32_t *regmap = (uint32_t *) 0x70000000;

		//A + B, and the result is less than or equal to +2^32-1 (no Carry out).
		regmap[2]=0; //K
		regmap[0]=10; //A
		regmap[1]=1; //B
		size_t r = regmap[0]; // S
		size_t t = regmap[2]; // Cout
		if (r==11&&t==0)
		{
			printf("S 11 = %d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("success\n");
		}


		//A + B, and the result is greater than +2^32-1 (Carry out).
		regmap[2]=0; //K
		regmap[0]=4294967295; //A
		regmap[1]=1; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if (r==0&&t==1)
		{
			printf("S 0 =%d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("sucesss\n");
		}



		//A - B is positive (Carry out).
		regmap[2]=1; //K
		regmap[0]=3; //A
		regmap[1]=1; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if (r==2&&t==1)
		{
			printf("S 2 =%d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("sucesss\n");
		}


		//A - B is zero (Carry out).
		regmap[2]=1; //K
		regmap[0]=2; //A
		regmap[1]=2; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if (r==0&&t==1)
		{
			printf("S 0 =%d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("sucesss\n");
		}



		//A - B is negative (no Carry out).
		regmap[2]=1; //K
		regmap[0]=1; //A
		regmap[1]=2; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if (r==-1&&t==0)
		{
			printf("S -1 =%d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("sucesss\n");
		}


		//Test vector 6: Random Addition A + B
		regmap[2]=0; //K
		regmap[0]=7; //A
		regmap[1]=8; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if(r==15&&t==0)
		{
			printf("S F =%d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("success\n");
		}


		//Test vector 7: Random Subtraction A - B
		regmap[2]=1; //K
		regmap[0]=15; //A
		regmap[1]=7; //B
		r = regmap[0]; // S
		t = regmap[2]; // Cout
		if(r==8&&t==1)
		{
			printf("S 8 = %d\n", r); //print S value
			printf("Cout = %d\n", t);//print carry
			printf("success\n");
		}


	return 0;
}