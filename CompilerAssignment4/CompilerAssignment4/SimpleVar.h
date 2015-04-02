#pragma once



class GlobalVar;

class SimpleVar
{
public:

	SimpleVar();
	SimpleVar(string _name, string _type);
	SimpleVar(const SimpleVar& other);
	~SimpleVar(void);

	virtual SimpleVar* clone() { return new SimpleVar(*this); }

	bool isDeclaredProperly;
	bool marked_undefined;
	string name;
	string type; // int, float, MyClass...
	string obgect_type; // class, function, array, simple variable, function parameter
	unsigned int address;
	bool isAlreadyDeclared;
	string alias;
	string expressionType;

	int objectLineNumber;
	int int_numericValue;
	bool bool_value;
	int float_numericValue;
	list<int>* dimention_list; 
	list<pair<int,SimpleVar*>> runtime_exp_list; 
	string runtime_offset;

	bool isFunctionParam;

	virtual void insert(string key, SimpleVar* record){};
	virtual void cout_(ostream& fileOutput); // couts on the screen simbol table
	virtual void delete_(SimpleVar* var){};	//delets simbol table when scope is closed
	virtual void creat_simbolTable(){}; // creates simboll table


	virtual string returnObgectType(){return obgect_type;}// class, function, simple var
	virtual string returnVariableType(){return type;};
	virtual SimpleVar* search(string variableName);
	virtual int validateUndefined_parameters(GlobalVar* globalVar){return 0;};
	virtual int reserveMemoryBlock();
	virtual int computeMemorySize(GlobalVar* global_scope_var, int errorCount);
	virtual int compute_reservation_memory_size(GlobalVar* global_scope_var, int errorCount);
	virtual string returnOffset(){ return runtime_offset;};
	virtual string cout_AddressCode(int mem_address, string reg) 
	{
		stringstream  output;
		if(runtime_offset == "0"){
		output<< "addi "<<reg<<","<<"r0"<<","<< mem_address<<endl;
		}else {
					
		output<<"lw "<<reg<<","<<runtime_offset<<"(r0)"<<endl;
		output<<"addi "<<reg<<","<<reg<<","<<mem_address<<endl;
		
		}
		return output.str();
	}
	
	list<pair<string/*name*/, string/*type*/>> miban;
	int ComputeRuntimeObjectAddress(string objectName);

	static GlobalVar* m_global_scope_var;
};

