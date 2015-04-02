#pragma once

class TokenOperator :
	public Token
{
public:
	TokenOperator(void);
	~TokenOperator(void);

	TokenOperator(string lexem, string lexemCode, int line);

};

