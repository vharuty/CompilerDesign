#include "stdafx.h"
#include "GlobalVar.h"


GlobalVar::GlobalVar(const GlobalVar& other) : SimpleVar(*(SimpleVar*)&other)
{if(m_SimbolTable.simbolTable != NULL)
	m_SimbolTable = other.m_SimbolTable;
	obgect_type = "globalScop";
	isDeclaredProperly = true;
}

GlobalVar::GlobalVar(void)
{ 
	m_SimbolTable.simbolTable = new map<string, SimpleVar*>();
	obgect_type = "globalScop";
	isDeclaredProperly = true;
	alias = "Global";
}


GlobalVar::~GlobalVar(void)
{
}

void GlobalVar::insert(string key, SimpleVar* record){
	
	m_SimbolTable.simbolTable->insert(pair<string, SimpleVar*>(key, record));
	
}


int GlobalVar::validateUndefined_parameters(GlobalVar* globalVar){
	int numberOfErrirs = 0;
	map<string, SimpleVar*>::iterator it_cl = m_SimbolTable.simbolTable->begin();
	for( ;it_cl != m_SimbolTable.simbolTable->end();){
		if(it_cl->second->marked_undefined){
			if(globalVar->m_SimbolTable.search(it_cl->second->returnVariableType()) == NULL)
			{
				
				//cout<<"Undeclared identifier	on the line		"<< it_cl->second->objectLineNumber << ": " <<it_cl->second->type<<endl;
				m_SimbolTable.simbolTable->erase(it_cl++);
				numberOfErrirs++;
				it_cl =m_SimbolTable.simbolTable->begin();
			continue;
			}
			else
				it_cl->second->marked_undefined = false;
			
		}else 
			numberOfErrirs = numberOfErrirs + it_cl->second->validateUndefined_parameters(globalVar);	
		++it_cl;
	}




 	 return m_SimbolTable.validateUndefinedParameter(this);
 }

void GlobalVar::cout_(ostream& fileOutput){
	
	fileOutput<< endl<< endl << "----------Output for global scope-------" << endl;
	m_SimbolTable.cout_(fileOutput);
	fileOutput<< "----------------------------------------" << endl<< endl<< endl;
}




void GlobalVar::delete_(SimpleVar* var){
	m_SimbolTable.delete_simbolTable(var);	
}

