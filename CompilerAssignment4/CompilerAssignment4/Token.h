#pragma once


class Token{
public:
	string m_type; // class of the token
	 string m_lexem; // name of a token //or string value
	string m_lexemCode; // represents code for the token like if-IF
	int m_location; // location of a token in the file
	int m_lenght;//number of characters of the token

	Token(void){};
	~Token(void){};
	Token(string lexem, string lexemCode, int location, string classification); // non default constructor
	Token(const Token& token);// copy constructor
	Token& Token:: operator=(const Token& token); // assignment operator
	virtual string returnType(); // returns type/class of the token
	virtual void outputIntoFile(ofstream& outputFile); // is used to output token into a file



};