#include "stdafx.h"
#include "Scope.h"


Scope::Scope(void)
{
	simbolTable = new map<string, SimpleVar*>();
}


Scope::~Scope(void)
{
}


Scope::Scope(const Scope& other)
{
	map<string, SimpleVar*>::const_iterator mit = other.simbolTable->begin();
	for(; mit != other.simbolTable->end(); mit++)
	{
		(*simbolTable)[mit->first] = mit->second->clone();
	}
}


Scope& Scope::operator=(const Scope& other)
{
	if(other.simbolTable != NULL)
	{
		simbolTable = new map<string, SimpleVar*>();
		map<string, SimpleVar*>::const_iterator mit = other.simbolTable->begin();
		for(; mit != other.simbolTable->end(); ++mit)
		{
			(*simbolTable)[mit->first] = mit->second->clone();
		}
	}
	return *this;
}


void Scope::insert(string key, SimpleVar* record){
	if(simbolTable != NULL)
		simbolTable->insert(pair<string, SimpleVar*>(key,record));
}



void Scope::cout_(ostream& fileOutput){
	map<string,SimpleVar*> ::iterator it;
	if(simbolTable == NULL ) return;
	for(it = simbolTable->begin(); it != simbolTable->end(); ++it){
		it->second->cout_(fileOutput);
	}
}



SimpleVar* Scope::searchByType(string typeName, GlobalVar* globalScop){
	//map<pair<string, string>, SimpleVar*> m_simbolTable;

	map<string, SimpleVar*>:: iterator it = simbolTable->begin();
	for(; it != simbolTable->end(); ++it){
		if(it->second->obgect_type == "function")
			continue;

		if(it->second->type == typeName)
			return it->second;
		if(it->second->type != "int" && it->second->type != "float")
		{
			ClassVar* class_var = dynamic_cast<ClassVar*>(globalScop->search(it->second->type));
			if(class_var != NULL)
			{
				SimpleVar * var = class_var->simbolTable.searchByType(typeName, globalScop);
				if(var != NULL)
					return var;
			}
		}
		
	}
	return NULL;
}


SimpleVar* Scope::search(string variableName){
	//map<pair<string, string>, SimpleVar*> m_simbolTable;

	map<string, SimpleVar*>:: iterator it = simbolTable->begin();
	while(it != simbolTable->end()){
		if(it->first == variableName)
			return it->second;
		++it;
	}
	return NULL;
}

int Scope::validateUndefinedParameter(GlobalVar* globalScop){
	int numberOfErrors = 0;
	map<string, SimpleVar*> ::iterator it = globalScop->m_SimbolTable.simbolTable->begin();
	for(; it != globalScop->m_SimbolTable.simbolTable->end(); ++it){
		numberOfErrors = numberOfErrors + it->second->validateUndefined_parameters(globalScop);
	}

	for(it = globalScop->m_SimbolTable.simbolTable->begin() ; it != globalScop->m_SimbolTable.simbolTable->end(); ){
		if(it->second->marked_undefined){
			cout<<endl;
			//	cout<<"Undeclared identifier  on the line	"<<it->second->objectLineNumber << ": " <<it->second->type<<endl;
			numberOfErrors++;
			it = globalScop->m_SimbolTable.simbolTable->erase(it++);
		}
		++it;
	}
	return numberOfErrors;
}


void Scope::delete_simbolTable(SimpleVar* var){

	if(simbolTable !=  NULL){
		map<string, SimpleVar*>::iterator it = simbolTable->begin();
		if(var->obgect_type == "class"){
			ClassVar* c_var = dynamic_cast<ClassVar*>(it->second);
			for(; it != simbolTable->end(); it++)
				c_var->simbolTable.delete_simbolTable(c_var);
		}else if(var->obgect_type == "function"){
			simbolTable->clear();
		}


	}
}

void Scope::creat_simbolTable()
{ 
	simbolTable = new map<string, SimpleVar*>();
}

int Scope::reserveMemoryBlock(){
	int size = 0;
	if( simbolTable != NULL){
		map<string, SimpleVar*>:: iterator it =  simbolTable->begin();
		for(; it != simbolTable->end(); ++it){
			size = size + it->second->reserveMemoryBlock();


			//	if(it->second->type != "int" && it->second->type != "float")

		}
		return size;
	}

}

int Scope::computeMemorySize(GlobalVar* global_scope_var, int errorCount){

	if(errorCount > 0)
		return 4;
	int size = 0;
	if( simbolTable != NULL){
		map<string, SimpleVar*>:: iterator it =  simbolTable->begin();
		for(; it != simbolTable->end(); ++it){
			//	if(it->second->type != "int" && it->second->type != "float"){
			//		size = size + global_scope_var->search(it->second->type)->computeMemorySize(global_scope_var);

			//	}else
			size = size + it->second->computeMemorySize(global_scope_var, errorCount);

		}

	} 
	return size ;
}