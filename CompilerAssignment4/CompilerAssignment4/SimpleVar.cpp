#include "stdafx.h"
#include "SimpleVar.h"


GlobalVar* SimpleVar::m_global_scope_var = NULL;

SimpleVar::SimpleVar()
{ 
	dimention_list = new list<int>();
	obgect_type = "SimpleVar"; 
	marked_undefined = false; 
	isDeclaredProperly = false; 
	isFunctionParam = false;
	isAlreadyDeclared = false;
	address = 0;
	runtime_offset = "0";
	
	
}


SimpleVar::SimpleVar(string _name, string _type) : name(_name), type(_type)
{
	dimention_list = new list<int>();
	obgect_type = "SimpleVar";
	isDeclaredProperly = false;
	marked_undefined = false;
	isFunctionParam = false;
	isAlreadyDeclared = false;
	address = 0;
	runtime_offset = "0";
	expressionType = type;

}


SimpleVar::SimpleVar(const SimpleVar& other)
{
	name = other.name;
	type = other.type;
	isAlreadyDeclared = other.isAlreadyDeclared;
	isFunctionParam = other.isFunctionParam;
	obgect_type = other.obgect_type;
	address = other.address;
	isDeclaredProperly = other.isDeclaredProperly;
	marked_undefined = other.marked_undefined;
	int_numericValue = other.int_numericValue;
	bool_value = other.bool_value;
	float_numericValue = other.float_numericValue;
	objectLineNumber = other.objectLineNumber;
	alias = other.alias;
	runtime_offset = other.runtime_offset;
	address = other.address;
	expressionType = other.expressionType;
	if(other.dimention_list != NULL)
	{
		dimention_list = new list<int>;
		*dimention_list = *(other.dimention_list);
	}
	else
	{
		dimention_list = NULL;
	}
	//list<pair<int,SimpleVar*>>
	runtime_exp_list = other.runtime_exp_list;
	miban = other.miban;
}

SimpleVar::~SimpleVar(void)
{
}

SimpleVar* SimpleVar::search(string variableName){

	if(name == variableName)
		return this;
	else
		return NULL;

}

void SimpleVar::cout_(ostream& fileOutput){
	if(isFunctionParam)
		fileOutput << type << " " << name;
	else
		fileOutput << "\t" << type << " " << name << ";"<<endl;

} // couts on the screen simbol table

int SimpleVar::reserveMemoryBlock(){
	return 4;
}

int SimpleVar::computeMemorySize(GlobalVar* global_scope_var, int errorCount){
	if(errorCount > 0)
		return 4;

	int returnValue = 0;// = 4;
	if(type != "int" && type != "float"){
		if( global_scope_var->search(type) != NULL )
		returnValue = global_scope_var->search(type)->computeMemorySize(global_scope_var, errorCount);
	}else returnValue = 4;

	return returnValue ;
}



int SimpleVar::compute_reservation_memory_size(GlobalVar* global_scope_var, int errorCount){
	if(errorCount > 0)
		return 4;
	int returnValue = 4;
	if(type != "int" && type != "float"){
		if( global_scope_var->search(type) != NULL )
		returnValue = global_scope_var->search(type)->computeMemorySize(global_scope_var, errorCount) ;
	}

	return returnValue;
}


int SimpleVar::ComputeRuntimeObjectAddress(string objectName)
{
	int computedAddress =  0; // = 4;
	list<pair<string/*name*/, string/*type*/>>::iterator lit = miban.begin();
	for(; lit != miban.end(); lit++)
	{
		if(lit->first == objectName)
		{
			break;
		}
		else
		{
			if(lit->second == "int" || lit->second == "float"){
				computedAddress += 4;

			}
			else
			{
				SimpleVar * obj = m_global_scope_var->search(lit->second);
				if(obj != NULL)
				{
					computedAddress += obj->ComputeRuntimeObjectAddress("");
				}
			}
		}
	}
	return computedAddress;
}