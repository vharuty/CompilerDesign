#pragma once


class TokenPunctuation :
	public Token
{
public:
	TokenPunctuation(void);
	~TokenPunctuation(void);
		TokenPunctuation(string lexem, string lexemCode, int line);

};

