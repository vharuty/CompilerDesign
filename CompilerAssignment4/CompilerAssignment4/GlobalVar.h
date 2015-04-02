#pragma once


class GlobalVar: public SimpleVar
{
public:
	GlobalVar(const GlobalVar& other);
	GlobalVar(void);
	~GlobalVar(void);

	void insert(string key, SimpleVar* record);
	Scope m_SimbolTable;
	 
	virtual void cout_(ostream& fileOutput);
	SimpleVar* search(string variableName){return m_SimbolTable.search(variableName);}
	int validateUndefined_parameters(GlobalVar* globalVar);
	void delete_(SimpleVar* var);
};

