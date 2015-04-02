#pragma once

class GlobalVar;

class Scope
{
public:

	Scope(void);
	~Scope(void);
	Scope(const Scope& other);
	Scope& operator=(const Scope& other);
	
	map<string, SimpleVar*>*  simbolTable;
	//map<string, SimpleVar*> m_simbolTable; // name type => <myClass, class> or <func1, function>
	
	void creat_simbolTable();
	void delete_simbolTable(SimpleVar* var);
	void insert(string key, SimpleVar* record);
	int validateUndefinedParameter(GlobalVar* globalScop);
	SimpleVar* search(string variableName);
	SimpleVar* searchByType(string typeName, GlobalVar* globalScop);
	virtual void cout_(ostream& fileOutput);
	int reserveMemoryBlock();
	int computeMemorySize(GlobalVar* global_scope_var, int errorCount);

};

