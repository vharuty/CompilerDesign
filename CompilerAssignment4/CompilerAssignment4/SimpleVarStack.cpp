#include "stdafx.h"



SimpleVarStack::reference SimpleVarStack::top()
{	
	if(empty())
	{
		//cout<<"The " << name << " is empty while calling TOP" << endl;
		throw ParseEsception();
	}
	return stack::top();
}

void SimpleVarStack::pop()
{	
	if(empty())
	{
		//cout<<"The " << name << " is empty while calling POP" << endl;
		throw ParseEsception();
	}
	stack::pop();
}

void SimpleVarStack::push(const value_type& _Val)
{	
	/*if(_Val == NULL)
	{
	int i = 0;
	}
	if(dynamic_cast<SimpleVar*>(_Val) != NULL &&
	dynamic_cast<FunctionVar*>(_Val) == NULL &&
	_Val->obgect_type == "function" && _Val->name == "function1")
	{
	int aa = 0;
	}*/
	stack::push(_Val);
}