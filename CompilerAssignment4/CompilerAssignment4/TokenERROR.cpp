#include "stdafx.h"
#include "TokenERROR.h"


TokenERROR::TokenERROR(void)
{
}


TokenERROR::~TokenERROR(void)
{
}

TokenERROR::TokenERROR(PairState state)
{
	errorState.currentState = state.currentState;
	errorState.nextState = state.nextState;
	m_errorBody = returnErrorMessage(errorState);
}

	TokenERROR::TokenERROR(string lexem, string lexemCode, int line,PairState state):
		Token(lexem, lexemCode,line, "error")
	{
	errorState.currentState = state.currentState;
	errorState.nextState = state.nextState;
	m_errorBody = returnErrorMessage(errorState);
	}

//returnes error messages based on current state 
string TokenERROR::returnErrorMessage(PairState state){ //pair<fromState, toState>

	string error;

	if(state.currentState == 3)
		error = "ERIN#1: INVALIDE NUMBER => TAILING '0' ON THE LINE#	";
	if(state.currentState == 25)
		error = "ERUC#1: UNCLOSSED COMMENT => '*/' is missing ON THE LINE#	";
	if(state.currentState == 23)
		error = "ERUC#1: UNCLOSSED COMMENT => '*/' is missing ON THE LINE#	";

	if(state.currentState == 28)
		error = "ERUC#1: UNCLOSSED COMMENT => '*/' is missing ON THE LINE#	";
	if(state.currentState == 0)
		if(state.nextState == 42 )
			error = "ERIT#1: INVALIDE TOKEN IS RECOGNIZED: '_' CAN'T LEAD THE IDENTIFIER ON THE LINE#	"; //appears when the token consists of valid atomic elements, but violates lexical specifications of the language, ex <_>
		else 
			error = "ERICH#1: UNDEFINED CHARACTER ON THE LINE#	"; // appears when lexical analyzer receives an imput as a character that is not defined by the deffinition => %$#@


	return error;

}

	void TokenERROR::outputIntoFile(ofstream& outputFile){
	//	cout << token->m_lexem<<"  "<<((TokenERROR*)(token))->m_errorBody<<"  "<<token->m_location<<endl;

	if (outputFile.is_open())
	{
		if(outputFile.good())
		{
			outputFile<<this->m_lexem<<"\t"<<this->m_errorBody<<"\t"<<this->m_location<<endl;
		}


	}
	}

