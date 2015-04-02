#pragma once

class Expression :
	public SimpleVar
{
public:
	Expression(void){obgect_type = "expression";};
	~Expression(void);
	string objectType;
	bool synthesised;
	int index;
};

