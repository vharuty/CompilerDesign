#pragma once

#include <map>
#include <deque>
#include <string.h>
#include <sstream>
#include <string>
#include <fstream>
#include <iostream>
#include <Windows.h>
#include <vector>
#include <stack>
#include <algorithm>
#include <sstream>
#include "TokenReservedWord.h"
#include "TokenOperator.h"
#include "TokenERROR.h"
#include "TokenPunctuation.h"
#include "TokenNumeric.h"
#include "TokenFactory.h"
#include "Scope.h"
#include "SimpleVar.h"
#include "ClassVar.h"
#include "TransitionTableRecord.h"
#include "userDefinesTypes.h"
#include "CodeReuseClass.h"
#include "LexicalAnalizer.h"
#include "GlobalVar.h"
#include "FunctionVar.h"
#include "ArrayVar.h"
#include "Factor_.h"
#include "Factor_cl.h"
# include "Term.h"
#include "Term_.h"
#include "ArithExpr.h"
#include "ArithExpr_.h"
#include "Expression.h"
#include "Expression_.h"

class syntaxAnalizer : public CodeReuseClass
{
public:



	syntaxAnalizer(void);
	~syntaxAnalizer(void);
	vector<string> m_firstSet;
	vector<string> m_followSet;
	map<string, terminalElementList> m_nonTerminal;
	vector<string> m_allTerminsls;
	vector<string> m_allnonTerminals;
	map<string, vector<string>> m_FIRSTset;
	//	map<string,vector<string>> m_topDownTable;
	map<PairIndex, rulleMap> m_topDownParsingTable;
	map<int,rulleMap > m_rulles;
	vector<string> m_epsilon_nonterminal;
	stack<string> m_parsStack;
	string m_stackTop;
	bool tokenIsMatched;
	vector<string> m_dropOperators;
	vector<string> m_replaceOperator;
	int m_currentErrorLine;
	map<string, PairCodeRecord> m_code;
	map<string, bool> m_levelOfParrsing;
	stack<pair<SimpleVar*,string>> m_braces;


	string m_lastLexemInSyncBlok;
	int m_lastLexemLocationInSyncBlok;

	GlobalVar* m_GlobalScop;
	//stack<SimpleVar*> m_stackScope; // keeps current scope at tje top
	SimpleVarStack m_stackScope; // keeps current scope at tje top
	string m_rulePrefix;
	string m_whatIsParsed;
	int m_semanticStep; // =1 if  token is class or program or type, is =2 if token is <;> , <(>, <[> 
	bool m_startSementicAction;
	deque<Token*> m_tokenCache;
	SimpleVar *m_lastInsertedRecord;
	bool isSignaturVariable;
	vector<string> operator_expression;
	deque<Token*> m_signatureVariable;
	bool m_validateVariable;
	//stack<Token*> m_acumulater;
	TokenStack m_acumulater;
	string m_semanticActionTriger; // semantic action on the top of the stack
	Token* m_currentToken; // token just read fromm  the file
	Token m_lastToken;
	//stack<SimpleVar*> m_scopeHeararchy;
	SimpleVarStack m_scopeHeararchy;
	//stack<SimpleVar*> m_currentSemanticStack;
	SimpleVarStack m_currentSemanticStack;
	int numberOfPasses;
	
	//---------------------------------------------------------------------
	//stack <string> m_regStack; 
	StringStack m_regStack;
	int m_temp_alias_index; // current index for temporary alias
	//stack <string> jump_marker_stack;
	StringStack jump_marker_stack;
	int jump_marker;
	string end_program_marker;
	int NUMBER_OF_BYTS_USED;

	string functionCallStack;
	string functionCallStack_ponter;

	void generatecode();

	string generate_Alias(string prefix = "");
	string generate_jump_marker(string prefix = "");
	string generate_ENDIF_marker();
	string generate_ELSE_marker();
	string muntiplication_(string operator_);
	string addition_(string operator_);
	string relation_(string operator_);
	void initialize_registerTo_0(string reg);
	void memoryCopy(string from, string from_pointer, string into, string into_pointer ,int memoryAmount);
	void memoryCopy_byRegister(string from, string from_pointer, string into, string into_pointer , string register_);
	bool compare_array_dimention_list(list<int>* functionParam, list<int>* passParam );
	void put_();
	void get_();
	void memCopy_();
	void getPutReal_();
	//actions related to code generation
	void compute_offset_code(SimpleVar* var);
	void EMPTY_SEMANTIC_STACKS();


	//-------------------------------- RECURSION-------------------------------------	

	string functionCallStack_recursion;
	string functionCallStack_ponter_recursion;

	//---------------------------------------------------

	int m_numberOfSuccessfulScans;
	int m_programCount;
	int m_classCount;
	int m_errorLine;
	bool m_extraThenIsAdded;
	bool m_extraElseIsAdded;
	bool m_prog_Isadded;

	ofstream* m_syntax_errors_file;
	ofstream* m_semantic_errors_file;
	ofstream* m_derivations_file;
	ofstream* m_symbolTableFile;


	void insert_levelOfParsing();
	void update_levelOfParsing(string str, string action);
	bool return_levelOfParsing(string str);
	void fillCode();
	void insertfistFollow();
	void insertNonTerminals();
	void printContent();
	void initializeRules();
	void fillTopDownTable();
	void detectEmpetyCells();
	void pars(string fileName);
	void match();
	void initialize_regStack();

	//bool processTokene_secondPass(Token* token);


	bool processToken(Token* token);
	void insertFirstSet();
	bool errorChecking(map<PairIndex, rulleMap>::iterator& it, string token, Token* currentToken);
	void insert_dropOperators();
	void insert_replaysOperator();
	string replaceEronusNonterminal(const string& nonterminal);
	void insert_synchronizingSet();
	bool synchronizingMethod(Token* token);
	bool synchronizingMethod_prog(Token* token);
	string returnErrorMessage(Token* token, bool searchByStackTop);
	string intToStr(int integerValue);
	string getType(const string& type);
	bool useEpsilonRule(const string& nonterminal) { return false; }
	void outputIntoFile(const string& stringIntoFile);
	void outputSemErr(const string& text);
	void printRule(const map<PairIndex, rulleMap>::iterator& it);


	void manage_StackScope(Token* token );
	bool isPartOf_expressionOperator(string operator_value);
	string stack_ToString(deque<Token*> varStack);
	void semanticAction_secondPass(Token& token);
	void analizeSemanticAction(string action);
	map<string, string> m_semanticActions1;
	bool isSemanticAction1(const string& action);
	map<string, string> m_semanticActions2;
	bool isSemanticAction2(const string& action);
	void validateUndefinedParameters();
	SimpleVar* search_scopeHeararchy(string objectName);
	void cretaeRecord_action_V(Token* type, Token* id);
	void insertFunction_action_F();
	void insertFunction_action_F2();
	void insertFunctionParameter_FP();
	void insertFunctionParameter_FP2();
	void insertNewDimention_action_DIM();
	void insert_action_IV();
	void insert_action_IV2();
	void insert_action_IV_FOR();
	void insert_class_action_B();
	void insert_class_action_B2();
	void insert_program_action_c();
	void insert_program_action_c2();
	void isUserDefined_action();
	void validateVariable();
	void printStack();
	void output(const string& val);


	void storeRegistries();
	void restoreRegistries();

	int internalErrors;

	int lexicalErrorCount;
	int errorCount;
	int m_cascadingErrorCount; // number of error
	int m_numberOfSemanticErrors;
	int m_firstPassErrorCount;

	int getErrorCount()
	{
		return
			m_firstPassErrorCount + 
			lexicalErrorCount +
			errorCount +
			m_cascadingErrorCount + 
			m_numberOfSemanticErrors; 
	}
};

