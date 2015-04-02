#pragma once


class ClassVar : public SimpleVar
{
public:

	//ClassVar(){};
	ClassVar(string name);
	ClassVar(const ClassVar& other);
	~ClassVar(void);

	map<string, string> m_bodyVariable_list;
	Scope simbolTable ;
	void insert(string key, SimpleVar* record);
	int numberOfInstancecCreated ;
	int pointer_to_variable;  // points the memory block where mast be written next variable
	

	SimpleVar*  search(string variableName);
	SimpleVar* clone();
	void delete_();
	int validateUndefined_parameters(GlobalVar* globalVar);
	void creat_simbolTable(){ simbolTable.creat_simbolTable();};
	virtual void cout_(ostream& fileOutput);
	int reserveMemoryBlock();
	void duplicateSimbolTable(string prefix, int abbress_of_instance);
	int computeMemorySize(GlobalVar* global_scope_var, int errorCount);

};

