#include "stdafx.h"
#include "ClassVar.h"





ClassVar::~ClassVar(void)
{
}

ClassVar::ClassVar(const ClassVar& other) : SimpleVar(*(SimpleVar*)&other)
{
	m_bodyVariable_list = other.m_bodyVariable_list;
	simbolTable = other.simbolTable;
	numberOfInstancecCreated = other.numberOfInstancecCreated;
	pointer_to_variable = other.pointer_to_variable;
}


ClassVar::ClassVar(string name) : SimpleVar(name, "class") 
{ 
	obgect_type = "class";
	numberOfInstancecCreated = 0;
	pointer_to_variable = 0;
}



void ClassVar::insert(string key, SimpleVar* record){
	simbolTable.insert(key,record);

}


void ClassVar::delete_(){
	simbolTable.delete_simbolTable(this);

}
void ClassVar::cout_(ostream& fileOutput){
	if(name != "program")
		fileOutput<< "class ";

	fileOutput << name << "{" <<endl;
	 simbolTable.cout_(fileOutput);
	fileOutput<< "};"<<endl;
}

SimpleVar*  ClassVar:: search(string variableName)
{ 
	if(name == variableName) 
		return this;
	else
		return simbolTable.search(variableName);
}

SimpleVar*  ClassVar::clone()
{
	return new ClassVar(*this);
}


int  ClassVar::validateUndefined_parameters(GlobalVar* globalVar){
	int numberOfErrirs = 0;
	map<string, SimpleVar*>::iterator it_cl = simbolTable.simbolTable->begin();
	for( ;it_cl != simbolTable.simbolTable->end();){
		if(it_cl->second->marked_undefined){
			if(globalVar->m_SimbolTable.search(it_cl->second->returnVariableType()) == NULL)
			{

				//cout<<"Undeclared identifier	on the line		"<< it_cl->second->objectLineNumber << ": " <<it_cl->second->type<<endl;
				simbolTable.simbolTable->erase(it_cl++);
				numberOfErrirs++;
				it_cl = simbolTable.simbolTable->begin();

				continue;
			}
			else
				it_cl->second->marked_undefined = false;

		}else 
			numberOfErrirs = numberOfErrirs + it_cl->second->validateUndefined_parameters(globalVar);	
		++it_cl;
	}
	return numberOfErrirs;
}



int ClassVar::reserveMemoryBlock(){
	int size = 0;
	size = simbolTable.reserveMemoryBlock();
	return size;
}

void ClassVar::duplicateSimbolTable(string prefix , int abbress_of_instance){ // duplicate scope if a new instance is created
	//Scope simbolTable ;
	// map<string, SimpleVar*>*  simbolTable;

	map<string, SimpleVar*>::iterator it  = simbolTable.simbolTable->begin();
	for( ; it!= simbolTable.simbolTable->end(); ++it){
		//it->second->alias = prefix + it->second->name;
		it->second->address = abbress_of_instance  + it->second->address;
		//address = address + it->second->reserveMemoryBlock();
	}


}


int ClassVar::computeMemorySize(GlobalVar* global_scope_var, int errorCount){
	if( errorCount   > 0)
		return 4;

	int size = 0;
	size = simbolTable.computeMemorySize(global_scope_var, errorCount);
	return size ; 
}
