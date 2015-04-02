#include "stdafx.h"
#include "TokenOperator.h"


TokenOperator::TokenOperator(void)
{
}


TokenOperator::~TokenOperator(void)
{
}

	TokenOperator::TokenOperator(string lexem, string lexemCode, int line):
		Token(lexem, lexemCode,line, "Operator")
	{
	}