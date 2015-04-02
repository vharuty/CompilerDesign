#pragma once


class Factor_cl :
	public SimpleVar
{
public:
	Factor_cl(void){obgect_type = "factor";};
	~Factor_cl(void);
		string objectType;
	bool synthesised;
	int index;
};

