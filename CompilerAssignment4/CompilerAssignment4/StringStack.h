#pragma once
class StringStack : public stack<string>
{
public:
	reference top();
	void pop();
	void push(const value_type& _Val);
};


