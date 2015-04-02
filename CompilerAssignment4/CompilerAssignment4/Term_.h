#pragma once


class Term_ :
	public SimpleVar
{
public:
	Term_(void){obgect_type = "term_";};
	~Term_(void);
		string objectType;
	bool synthesised;
	int index;
};

