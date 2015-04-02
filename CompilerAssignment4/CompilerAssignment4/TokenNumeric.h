#pragma once


class TokenNumeric :
	public Token
{
public:

	TokenNumeric(string lexem, string lexemCode, int line);
	TokenNumeric(void);
	~TokenNumeric(void);


	void converter();


	string numericType;//is it int or float
	int intValue;//integer value if token represents an integer
	int floatValue;
};

