#pragma once



class ArrayVar :
	public SimpleVar
{
public:
	ArrayVar() : SimpleVar(){
		expressionType = "array" ;
		obgect_type == "array_Variable";
	}
	ArrayVar(const ArrayVar& other);
	ArrayVar(string name, string type);
	~ArrayVar(void);
	int computeMemorySize(GlobalVar* global_scope_var, int errorCount);
	int numberOf_DIM;
	
	virtual void cout_(ostream& fileOutput);
	SimpleVar* search(string variableName);
	virtual SimpleVar* clone() 	{ return new ArrayVar(*this); }
	list<int> element_index_list;// index list of the elemet  a[0][1][1] => <0,1,1> => for a specific cell
	int reserveMemoryBlock(); // computes the amount of memory for an entire array
	int computeOffset(list<int> dim); // computes the memory point where a specific array cell starts 
	string  returnOffset(){ return runtime_offset;};
	
};

