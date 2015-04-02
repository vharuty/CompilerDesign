#pragma once



class TokenReservedWord :
	public Token
{
public:
	TokenReservedWord(void);

	~TokenReservedWord(void);

	TokenReservedWord(string lexem, string lexemCode, int line);

};

