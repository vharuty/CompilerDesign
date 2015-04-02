#include "stdafx.h"




TokenStack::reference TokenStack::top()
{	
	if(empty())
	{
		//cout<<"The " << name << " is empty while calling TOP" << endl;
		throw ParseEsception();
	}
	return stack::top();
}

void TokenStack::pop()
{	
	if(empty())
	{
		//cout<<"The " << name << " is empty while calling POP" << endl;
		throw ParseEsception();
	}
	stack::pop();
}

void TokenStack::push(const value_type& _Val)
{	
	if(_Val == NULL)
	{
		int i = 0;
	}
	stack::push(_Val);
}
