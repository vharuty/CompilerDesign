#pragma once
class SimpleVarStack : public stack<SimpleVar*>
{
public:
	string name;
	reference top();
	void pop();
	void push(const value_type& _Val);
};

