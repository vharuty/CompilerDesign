#pragma once

#include <string.h>
#include <string>
#include "Token.h"


#define FILEPATH ".\\files\\Assignment2\\"
#define SOURCEFILENAME	".\\files\\sourceFile.cpp"
#define TRANSMISSIONTABLENAME ".\\files\\Assignment2\\FileSystem\\TransitionTable.txt"
#define CODEFILENAME ".\\files\\Assignment2\\FileSystem\\code.txt"
#define RESERVEDWORDSFILENAME ".\\files\\Assignment2\\FileSystem\\reservedWords.txt"

// Lexical analyzer
//#define ERROROUTPUTFILE ".\\files\\Assignment2\\Output\\OutputERRORText.txt"
#define ERROROUTPUTFILE ".\\files\\Output\\LEXICAL_ANALYZER_ERRORS.txt"
//#define SOURCEFILEOUTPUT ".\\files\\Assignment2\\Output\\sourceFileOutput.txt"
#define SOURCEFILEOUTPUT ".\\files\\Output\\LEXICAL_ANALYZER_TOKENS.txt"

#define FIRSTFOLLOW ".\\files\\Assignment2\\Syntax\\FIRSTFOLLOW.txt"
#define RULLS	".\\files\\Assignment2\\Syntax\\RULLS.txt"
#define FIRST	".\\files\\Assignment2\\Syntax\\FIRST.txt"
#define FOLLOW	".\\files\\Assignment2\\Syntax\\FOLLOW.txt"

// Syntax analyzer
//#define DERIVATIONSOUTPUT ".\\files\\Assignment2\\Syntax\\DERIVATIONSOUTPUT.txt"
#define DERIVATIONSOUTPUT ".\\files\\output\\SYNTAX_ANALYZER_DERIVATIONS.txt"
//#define ERROROUTPUTFILE_SYNTAX_ANALYZER ".\\files\\Assignment2\\Syntax\\ERRORS_SYNTAX_ANALYZER.txt"
#define ERROROUTPUTFILE_SYNTAX_ANALYZER ".\\files\\output\\SYNTAX_ANALYZER_ERRORS.txt"
//#define SYMBOLTABLE ".\\files\\Assignment3\\symbolTable.txt"
#define SYMBOLTABLE ".\\files\\output\\SYNTAX_ANALYZER_SYMBOL_TABLE.txt"


//Semantic analyzer
//#define ERROROUTPUTFILE_SEMANTIC_ANALYZER ".\\files\\Assignment3\\ERRORS_SEMANTIC_ANALYZER.txt"
#define ERROROUTPUTFILE_SEMANTIC_ANALYZER ".\\files\\output\\SEMANTIC_ANALYZER_ERRORS.txt"



using namespace std;
class PairCodeRecord{
public: string code;
		string classification;
		PairCodeRecord(string _code, string _classification):code(_code), classification(_classification)
		{};
		PairCodeRecord(){};
		PairCodeRecord(const PairCodeRecord& other){
			this->classification = other.classification;
			this->code = other.code;
		}

		PairCodeRecord& operator=(const PairCodeRecord& other){
			this->classification = other.classification;
			this->code = other.code;
			return *this;
		}

};


class ParseEsception
{

};

class SynchronizeException
{
};



class PairState{
public: 
	PairState(int state1, int state2){
		currentState = state1;
		nextState = state2;
	}
	int currentState;
	int nextState;
	PairState(){};
	PairState(const PairState& other){
		this->currentState = other.currentState;
		this->nextState = other.nextState;
	}

	PairState& operator=(const PairState& other){
		this->currentState = other.currentState;
		this->nextState = other.nextState;
		return *this;
	}

};


class PairIndex{
public: 
	PairIndex(string indexNonTerminal, string indexTerminal){
		this->indexNonTerminal = indexNonTerminal;
		this->indexTerminal = indexTerminal;
	}
	string indexNonTerminal;
	string indexTerminal;
	PairIndex(){};
	PairIndex(const PairIndex& other){
		this->indexNonTerminal = other.indexNonTerminal;
		this->indexTerminal = other.indexTerminal;
	}

	PairIndex& operator=(const PairIndex& other){
		this->indexNonTerminal = other.indexNonTerminal;
		this->indexTerminal = other.indexTerminal;
		return *this;
	}

	bool operator<(const  PairIndex& rhs)const{
		return (this->indexNonTerminal + "#" + this->indexTerminal < rhs.indexNonTerminal + "#" + rhs.indexTerminal);
	}

	bool operator>(const  PairIndex& rhs)const{
		return (this->indexNonTerminal + "#" + this->indexTerminal > rhs.indexNonTerminal + "#" + rhs.indexTerminal);
	}

	bool operator==(PairIndex& rhs){
		return (this->indexNonTerminal + "#" + this->indexTerminal == rhs.indexNonTerminal + "#" + rhs.indexTerminal);
	}


};


class terminalElementList{
public:
	vector<string> m_firstTerminalList;
	vector<string> m_followTerminalList;
	terminalElementList(){}

	terminalElementList(const terminalElementList& other){
		this->m_firstTerminalList = other.m_firstTerminalList;
		this->m_followTerminalList = other.m_followTerminalList;
	}

	terminalElementList& operator=(const terminalElementList& other){
		this->m_firstTerminalList = other.m_firstTerminalList;
		this->m_followTerminalList = other.m_followTerminalList;
		return *this;
	}

	void insertRecord(string terminalType,const vector<string>& row){
		if(terminalType.compare("FIRST") == 0){
			m_firstTerminalList.reserve(row.size() -2);
			copy(row.begin() + 2, row.end(), back_inserter(m_firstTerminalList));
		}
		else{
			m_followTerminalList.reserve(row.size() -2);
			copy(row.begin() + 2, row.end(), back_inserter(m_followTerminalList));

		}
	}

};

class rulleMap{

public: rulleMap() : rullID(-1){};
		rulleMap(string key, vector<string> elements, int index, vector<string> synchronizingSet){
			this->rightSide = elements;
			this->keyNonTerminal = key;
			this->rullID = index;
			this->synchronizingSet = synchronizingSet;

		}
		vector<string> rightSide;
		vector<string> firstSet;
		vector<string> followSet;
		vector<string> synchronizingSet;


		string keyNonTerminal;
		int rullID;

		void print()
		{
			cout<< "keyNonTerminal: " << keyNonTerminal << ", ruleid "<< rullID;
			cout << ", rightSide { ";
			vector<string>::iterator it;
			for(it = rightSide.begin(); it != rightSide.end(); it++)
				cout << *it << " ";
			cout << "}, firstSet { ";
			for(it = firstSet.begin(); it != firstSet.end(); it++)
				cout << *it << " ";
			cout << "}, followSet { ";
			for(it = followSet.begin(); it != followSet.end(); it++)
				cout << *it << " ";
			cout << "}, synchronizingSet";
			for(it = synchronizingSet.begin(); it != synchronizingSet.end(); it++)
				cout << *it << " ";
			cout << "}" << endl;


		}


		rulleMap(const rulleMap& other){
			this->keyNonTerminal = other.keyNonTerminal;
			this->rightSide = other.rightSide;
			this->rullID = other.rullID;
			this->synchronizingSet = other.synchronizingSet;
		}

		rulleMap& operator=(const rulleMap& other){

			this->keyNonTerminal = other.keyNonTerminal;
			this->rightSide = other.rightSide;
			this->rullID = other.rullID;
			this->synchronizingSet = other.synchronizingSet;
			return *this;
		}


};



