#include "stdafx.h"
#include "TokenReservedWord.h"


TokenReservedWord::TokenReservedWord(void)
	
{
}


TokenReservedWord::~TokenReservedWord(void)
{
}

	TokenReservedWord::TokenReservedWord(string lexem, string lexemCode, int line):
		Token(lexem, lexemCode,line, "reservedWord")
	{
		m_type = "reservedWord";
	}