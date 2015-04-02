#pragma once


class FunctionVar :
	public SimpleVar
{
public:	
	//FunctionVar(){ alias_parameterStack_pointer = 0;};
	FunctionVar(const FunctionVar& other);
	FunctionVar(string name, string type, string parentAlias);
	~FunctionVar(void);

	SimpleVar* search(string variableName);
	SimpleVar * clone() { return new FunctionVar(*this); }
	void insert(string key, SimpleVar* record);
	virtual void cout_(ostream& fileOutput);
	string returnVariableType(){return return_type;};
	int validateUndefined_parameters(GlobalVar* globalVar);
	void delete_(SimpleVar* var);
	void creat_simbolTable();
	int numberOfParameters;
	deque<SimpleVar*> signature;
	map<string, string> m_bodyVariable_list;
	Scope simbolTable;	
	string return_type;
	void printSymbolTable(ostream& outFile);
	bool isClassMember;
	bool functionParamsAreChecked;

	SimpleVar* searchInSignture(string name);
	int reserveMemoryBlock();
	 int computeMemorySize(GlobalVar* global_scope_var, int errorCount);
	int reserveParameterStack(); //reserves memory block for function call parameters

	string jump_marker;
	//string alias_parameterStack;
	string returnValue_alias;
	//int alias_parameterStack_pointer;

	string runtime_parent_object ; 
	string compiletime_parent_object;
	int runtime_parent_address;
	list<pair<string , int>> runtimeParameterList;
	string END_PARAMETER_MARKER ;

};

