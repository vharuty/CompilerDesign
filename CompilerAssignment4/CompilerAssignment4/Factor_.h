#pragma once


class Factor_ :
	public SimpleVar
{
public:
	Factor_(void){objectType = "factor_";};
	~Factor_(void);

		string objectType;
	bool synthesised;
	int index;
};

