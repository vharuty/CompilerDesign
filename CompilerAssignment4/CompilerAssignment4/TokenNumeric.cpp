#include "stdafx.h"
#include "TokenNumeric.h"


TokenNumeric::TokenNumeric(void)
{
}


TokenNumeric::~TokenNumeric(void)
{
}



TokenNumeric::TokenNumeric(string lexem, string lexemCode, int line) : 
	Token(lexem, lexemCode,line, "numeric")
{
	floatValue = 0.0;
	intValue = 0;
	numericType = "";
}

