#pragma once


class Expression_ :
	public SimpleVar
{
public:
	Expression_(void){obgect_type = "expression";};
	~Expression_(void);
	string objectType;
	bool synthesised;
	int index;
};

