#pragma once

class Term :
	public SimpleVar
{
public:
	Term(void){objectType = "term";};
	~Term(void);
		string objectType;
	bool synthesised;
	int index;
};

