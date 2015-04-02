#include "stdafx.h"
#include "TokenFactory.h"


TokenFactory::TokenFactory(void)
{
}


TokenFactory::~TokenFactory(void)
{
}


TokenFactory::TokenFactory(string status,string tokenClass, string lexem, string lexemCode, int line, PairState finalTransition){
	if(tokenClass.compare("reservedWord") == 0){
		token = new TokenReservedWord(lexem,lexemCode,line);
	}
	else if(tokenClass.compare("Operator") == 0){
		token = new TokenOperator(lexem,lexemCode,line);
	}
	else if(tokenClass.compare("Punctuation") == 0){
		token = new TokenPunctuation(lexem,lexemCode,line);
	}
	else if(tokenClass.compare("identificator") == 0){
		token = new Token(lexem,lexemCode,line, "identificator");
	}
	else if(tokenClass.compare("whiteSpace") == 0){
		token = new Token(lexem,lexemCode,line, "whiteSpace");
	}
	else if(tokenClass.compare("numeric") == 0){
		size_t found ;
		string dot = ".";
		token = new TokenNumeric(lexem,lexemCode,line);
					if((found = lexem.find(dot)) != std::string::npos){
						((TokenNumeric*)token)->numericType = "floatValue";
					((TokenNumeric*)token)->floatValue = (double)atof(status.c_str());
					//((TokenNumeric*)token)->
					}
					else{
					((TokenNumeric*)token)->numericType = "intValue";
					((TokenNumeric*)token)->floatValue = atoi(status.c_str());
					}
		
	}
	else if(tokenClass.compare("error") == 0){
		token = new TokenERROR(lexem, lexemCode, line,finalTransition);
	}
	else
	{
		cout<<"!!!!!!!!!!!!!!!!!!!!"<<"unnown token"<<
			status << tokenClass << lexem << lexemCode << line <<
			endl;
	}
}



Token* TokenFactory::getFactoryObject(){
	return token;
}

