#include "stdafx.h"
#include "TokenPunctuation.h"


TokenPunctuation::TokenPunctuation(void)
{
}


TokenPunctuation::~TokenPunctuation(void)
{
}

	TokenPunctuation::TokenPunctuation(string lexem, string lexemCode, int line):
		Token(lexem, lexemCode,line, "Punctuation")
	{
	}