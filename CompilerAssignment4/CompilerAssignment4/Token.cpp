#include "stdafx.h"
#include "Token.h"


	Token::Token(string lexem, string lexemCode, int location, string classification){
		m_lexem = lexem; // name of a token
		m_lexemCode = lexemCode;// code of a token
		m_location = location;// location in the file
		m_type = classification;
		m_lenght = 0;
	}

	Token::Token(const Token& token){
		this->m_lexem = token.m_lexem;
		this->m_lexemCode = token.m_lexemCode;
		this->m_location = token.m_location;
		this->m_lenght = token.m_lenght;
		this->m_type = token.m_type;

	}

	Token& Token:: operator=(const Token& token){
		this->m_lexem = token.m_lexem;
		this->m_lexemCode = token.m_lexemCode;
		this->m_location = token.m_location;
		this->m_lenght = token.m_lenght;
		this->m_type = token.m_type;
		return *this;
	}

	string Token::returnType(){
		return m_type;
	}

	void Token::outputIntoFile(ofstream& outputFile){
	//	cout << token->m_lexem<<"  "<<((TokenERROR*)(token))->m_errorBody<<"  "<<token->m_location<<endl;

	if (outputFile.is_open())
	{
		if(outputFile.good())
		{
			outputFile<<this->m_lexem<<"\t"<<this->m_lexemCode<<"\t"<<this->m_location<<endl;
		}


	}
	}

