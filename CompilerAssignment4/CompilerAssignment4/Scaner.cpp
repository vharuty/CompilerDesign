#include "stdafx.h"
#include "Scaner.h"


Scaner::Scaner(void)
{
}


Scaner::~Scaner(void)
{
}

void Scaner::processScanning(string file){
	m_lexicalAnalizer.fillTransitionTable(); // creates a data structure for transition table
	m_lexicalAnalizer.fillCode();// creates a data structure for Tokens' CODs
	m_lexicalAnalizer.fillReservedWords();// creates a data structure forreserved words
	m_lexicalAnalizer.scan(file);// start scanning of given file
	cout<<endl<<endl<<endl<<"Input a character to terminate";
	char ch;
	cin>>ch;
	


}