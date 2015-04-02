#pragma once

class ArithExpr :
	public SimpleVar
{
public:
	ArithExpr(void){obgect_type = "arith";};
	~ArithExpr(void);
		string objectType;
	bool synthesised;
	int index;
};

