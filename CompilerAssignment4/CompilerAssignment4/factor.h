#pragma once
#include "simplevar.h"
class factor :
	public SimpleVar
{
public:
	factor(void){ objectType = "factor";};
	~factor(void);
	string objectType;
	bool synthesised;
	int index;
};

