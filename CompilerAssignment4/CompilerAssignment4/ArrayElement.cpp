#include "stdafx.h"
#include "ArrayElement.h"


ArrayElement::ArrayElement(void)
{
}


ArrayElement::~ArrayElement(void)
{
}


string ArrayElement::cout_AddressCode(int mem_address, string reg) 
	{
		stringstream  output;
		
		output<<"lw "<<reg<<","<<runtime_offset<<"(r0)"<<endl;
		output<<"addi "<<reg<<","<<reg<<","<<address<<endl;
		return output.str();
	}

int ArrayElement::reserveMemoryBlock(){
	return 4;
}
