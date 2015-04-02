#pragma once
#include "arrayvar.h"
class ArrayElement :
	public ArrayVar
{
public:
	ArrayElement(void);
	~ArrayElement(void);

	string cout_AddressCode(int mem_address, string reg); 

	int reserveMemoryBlock();
};

