#pragma once



class TokenFactory
{
private: Token* token;
public:
	TokenFactory(void);
	~TokenFactory(void);

	 Token* getFactoryObject();
TokenFactory(string status, string tokenClass, string lexem, string lexemCode, int line, PairState finalTransition);
//TokenFactory(string status,string tokenClass, string lexem, string lexemCode, int line, PairState finalTransition);

};


