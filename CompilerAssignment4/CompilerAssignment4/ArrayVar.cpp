#include "stdafx.h"
#include "ArrayVar.h"


ArrayVar::ArrayVar(const ArrayVar& other) : SimpleVar(*(SimpleVar*)&other)
{
	//dimention_list = other.dimention_list;
	numberOf_DIM = other.numberOf_DIM;
	expressionType = other.expressionType;
	//runtime_exp_list = other.runtime_exp_list;
}


ArrayVar::ArrayVar(string name, string type) : SimpleVar(name, type) 
{ 
	obgect_type = "array_Variable";
	expressionType = "array";
}


ArrayVar::~ArrayVar(void)
{
}


SimpleVar* ArrayVar::search(string variableName)
{ 
	if(name == variableName) 
		return this;
	else
		return NULL;
}


void ArrayVar::cout_(ostream& fileOutput){
	if(!isFunctionParam)
		fileOutput << "\t";

	fileOutput << type << " " << name << " " ; 
	if(dimention_list != NULL){
		list<int> ::iterator it = dimention_list->begin();
		for(; it != dimention_list->end(); ++it){
			fileOutput<<"["<<*it <<"]";
		}
	}

	if(!isFunctionParam)
		fileOutput<< ";" << endl;
}

int ArrayVar::reserveMemoryBlock(){
	int memoryBlock = 4;
	list<int> ::iterator it = dimention_list->begin();
	for(; it != dimention_list->end(); ++it )
		memoryBlock = memoryBlock * (*it);
	return memoryBlock;
}

int ArrayVar::computeMemorySize(GlobalVar* global_scope_var, int errorCount){ // returns size for a simple integer value
	if(errorCount > 0)
		return 4;

	int memoryBlock = 0;

	if(type == "int" )
		memoryBlock = 4;
	else if(type != "int" && type != "float"){
		if(global_scope_var->search(type) != NULL)
			memoryBlock = global_scope_var->search(type)->computeMemorySize(global_scope_var, errorCount);
	}

	list<int> ::iterator it = dimention_list->begin();
	for(; it != dimention_list->end(); ++it )
		memoryBlock = memoryBlock * (*it);
	return memoryBlock;

}


int ArrayVar::computeOffset(list<int> dim){
	int offset = 4;
	list<int>::iterator it = dim.begin();
	list<int>::iterator lastElement = dim.end()--;
	for(; it != dim.end(); ++it)
		if(it == lastElement)
			offset = offset + 4 * (*it);
		else
			offset = offset*(*it);
	return offset;
}


