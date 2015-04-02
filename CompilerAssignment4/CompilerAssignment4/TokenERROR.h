#pragma once

class TokenERROR :
	public Token
{
public:

	TokenERROR(void);
	~TokenERROR(void);
	TokenERROR(PairState state); 
	TokenERROR(string lexem, string lexemCode, int line,PairState state);

			string m_errorBody;	//empety if lexem is valid, othervose contains the error message
			PairState errorState;

			string returnErrorMessage( PairState state);
			void outputIntoFile(ofstream& outputFile);
			



};

