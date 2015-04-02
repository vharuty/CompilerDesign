#pragma once

class ArithExpr_ :
	public SimpleVar
{
public:
	ArithExpr_(void){obgect_type = "arith_";};
	~ArithExpr_(void);
		string objectType;
	bool synthesised;
	int index;
};

