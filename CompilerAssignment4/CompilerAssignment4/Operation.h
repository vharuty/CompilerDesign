#pragma once
#include "simplevar.h"
class Operation :
	public SimpleVar
{
public:
	Operation(void);
	~Operation(void);

	string operator_;
	SimpleVar* operand;
};

