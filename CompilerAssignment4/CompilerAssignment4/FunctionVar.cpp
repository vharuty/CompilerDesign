#include "stdafx.h"
#include "FunctionVar.h"


FunctionVar::FunctionVar(const FunctionVar& other) : SimpleVar(*(SimpleVar*)&other)
{
	deque<SimpleVar*>::const_iterator dit = other.signature.begin();
	for( ; dit != other.signature.end(); dit++)
		signature.push_back((*dit)->clone());
	simbolTable = other.simbolTable;
	return_type = other.return_type;
	m_bodyVariable_list = other.m_bodyVariable_list;
	numberOfParameters = other.numberOfParameters;
//@	alias_parameterStack_pointer = other.alias_parameterStack_pointer;
//@	alias_parameterStack = other.alias_parameterStack;
	returnValue_alias = other.returnValue_alias;
	jump_marker = other.jump_marker;
	isClassMember = other.isClassMember;
	functionParamsAreChecked = other.functionParamsAreChecked;

	runtime_parent_object = other.runtime_parent_object; 
	compiletime_parent_object = other.compiletime_parent_object;
	runtime_parent_address = other.runtime_parent_address;
	END_PARAMETER_MARKER = other.END_PARAMETER_MARKER;
}


FunctionVar::FunctionVar(string name, string type, string parentAlias) : SimpleVar(name, type)
{ 
	//cout<< "@@@ new function " << (int)this << ": "<< name << ", " << type << endl;
		obgect_type ="function"; 
		functionParamsAreChecked = false;
	return_type = type;
	isClassMember = false;
	//alias_parameterStack_pointer = 0;
	//alias_parameterStack = "stack_" + name + "_func";
	returnValue_alias = "retVal_" + parentAlias + "_" + name+ "_func";
	alias = "FUNC_" + parentAlias + "_" + name + "_alias";
	jump_marker = "FUNC_" + parentAlias + "_" + name + "_marker";
	END_PARAMETER_MARKER = "FUNC_" + parentAlias + "_" + name  + "END_PARAMETER_MARKER";
}


FunctionVar::~FunctionVar(void)
{
}

void FunctionVar::insert(string key, SimpleVar* record){
	this->simbolTable.insert(key,record);

}


int FunctionVar::reserveParameterStack(){
	int size = 0;
	if( !signature.empty()){
		deque<SimpleVar*>:: iterator it =  signature.begin();
		for(; it != signature.end(); ++it)
			size = size + (*it)->reserveMemoryBlock();
	}
	return size;
}

SimpleVar* FunctionVar::search(string variableName)
{ 
	if(name == variableName) 
		return this;
	else
		return simbolTable.search(variableName);
}



void FunctionVar::printSymbolTable(ostream& fileOutput)
{
	//(int) this<< ": " << 
	fileOutput<< endl <<"Symbol table for: "<< name << " on line# " << objectLineNumber << endl;
	if(!isDeclaredProperly)
	{
		fileOutput << "Function '"<< name <<"' on line# "<< objectLineNumber << " is ignored because of an error on its' decalaration=>"
			<<endl<<"scope is not printed"<<endl;
		return;
	}

	fileOutput << "\t" << returnVariableType() << " " << name << "(";
	//simbolTable.cout_();
	map<string,SimpleVar*> ::iterator it;
	bool printed = false;
	if(simbolTable.simbolTable != NULL)
	{
		deque<SimpleVar*> ::iterator it;
		bool printed = false;
		for(it = signature.begin(); it != signature.end(); ++it){
			if(printed)
				fileOutput << ", ";
			(*it)->cout_(fileOutput);
			printed = true;
		}
	}
	fileOutput << "){"<<endl; 
	if(simbolTable.simbolTable != NULL)
	{
		for(it = simbolTable.simbolTable->begin(); it != simbolTable.simbolTable->end(); ++it){
			if(!it->second->isFunctionParam){
				fileOutput << "\t";
				it->second->cout_(fileOutput);
			}
		}
	}
	fileOutput << "\t};"<<endl;
	fileOutput<< endl;
}

void FunctionVar::cout_(ostream& fileOutput){
	if(!isDeclaredProperly)
	{
		fileOutput << "Function '"<< name <<"' on line# "<< objectLineNumber << " is ignored because of an error on its' decalaration=>"
			<<endl<<"scope is not printed"<<endl;
		return;
	}

	fileOutput << "\t" << returnVariableType() << " " << name << "(";
	//simbolTable.fileOutput_();
	deque<SimpleVar*> ::iterator it;
	bool printed = false;
	for(it = signature.begin(); it != signature.end(); ++it){
		if(printed)
			fileOutput << ", ";
		(*it)->cout_(fileOutput);
		printed = true;
	}
	fileOutput << ");"<<endl; 

}


SimpleVar* FunctionVar::searchInSignture(string name)
{
	SimpleVar* retvalue = NULL;
	deque<SimpleVar*>::iterator it = signature.begin();
	for( ; it != signature.end(); it++)
	{
		if((*it)->name == name)
		{
			retvalue = *it;
			break;
		}
	}

	return retvalue;
}

int FunctionVar::validateUndefined_parameters(GlobalVar* globalVar){//@@@@@@@@@@@@@@
	int numberOfErrors = 0;
	map<string, SimpleVar*>::iterator it_func = simbolTable.simbolTable->begin();
	for(; it_func != simbolTable.simbolTable->end(); ){
		if(it_func->second->marked_undefined){
			if(globalVar->search(it_func->second->returnVariableType()) == NULL){
				numberOfErrors++;
				//		cout<<"Undeclared identifier  "<<it_func->second->objectLineNumber<< ":	"<< it_func->second->type<<endl;
				it_func =simbolTable.simbolTable->erase(it_func++);
				continue;
			}
			else it_func->second->marked_undefined = false;
		}
		++it_func;
	}
	return numberOfErrors;
}


void FunctionVar::creat_simbolTable(){

	simbolTable.creat_simbolTable(); 
	numberOfParameters = signature.size();
	deque<SimpleVar*>::iterator sit = signature.begin();
	for( ; sit != signature.end(); sit++)
		simbolTable.insert((*sit)->name,*sit);
}

void FunctionVar::delete_(SimpleVar* var){
	simbolTable.delete_simbolTable(var);	
}

int FunctionVar::reserveMemoryBlock(){
	int size = 0;
	size = simbolTable.reserveMemoryBlock();
	return size;
}

int FunctionVar::computeMemorySize(GlobalVar* global_scope_var, int errorCount){
	if(errorCount > 0)
		return 4;
	int size = 0;
	size = simbolTable.reserveMemoryBlock();
	//return size;
	return 0;
}
