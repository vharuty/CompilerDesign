#include "stdafx.h"

stack<string>::reference StringStack::top()
{
	if(empty())
		throw ParseEsception();

	return stack<string>::top();
}

void StringStack::pop()
{
	if(empty())
		throw ParseEsception();

	stack<string>::pop();
}


void StringStack::push(const value_type& _Val)
	{
		if(find(this->_Get_container().begin(), this->_Get_container().end(), _Val) != this->_Get_container().end())
		{
			cout << "Duplicate key in reg stack" << endl;
			//throw "Duplicate key in reg stack";
		}

		stack::push(_Val);
	}
