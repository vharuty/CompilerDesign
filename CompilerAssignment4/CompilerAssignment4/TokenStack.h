#pragma once
class TokenStack : public stack<Token*>
{
public:
	string name;
	reference top();
	void pop();
	void push(const value_type& _Val);
};
