#pragma once
#include "simplevar.h"
class Factot_ :
	public SimpleVar
{
public:
	Factot_(void){objectType = "factor_";};
	~Factot_(void);
	string objectType;
	bool synthesised;
	int index;
};

