#include "stdafx.h"
#include "syntaxAnalizer.h"

stringstream declar;
stringstream asmcode;

using namespace std;


void syntaxAnalizer::generatecode()
{
	put_();
	get_();
	memCopy_();
	getPutReal_();
	ofstream f(".\\files\\output\\_test.m");
	stringstream s;
	s<<"   org 100" <<endl
		<<"   align"<<endl;
	s<<declar.str();
	s<<"   org  " << NUMBER_OF_BYTS_USED + 200<<endl
		<<"   align"<<endl
		<<"   entry"<<endl
		<<"   jl r15, program"<<endl
		<<"   j end_program_marker"<<endl;


	s<<asmcode.str();

	//s<<"   lw r1, program_a(r0)"<<endl
	//	<<"   jl r15, putint"<<endl
	//s	<<"   hlt"<<endl;
	//	cout<<s.str();
	f<<s.str();
}


void syntaxAnalizer::manage_StackScope(Token* token){
	if(token->m_lexem == "{"){
		if(!m_braces.empty() && m_braces.top().second == "" && m_braces.top().first != NULL)
			m_braces.top().second = "{";
		else m_braces.push(pair<SimpleVar*, string>(NULL, "{"));
	}else if(token->m_lexem == "}"){
		if(m_braces.top().first == NULL)
			m_braces.pop();
		else{
			m_braces.pop();
			m_stackScope.pop();
		}

	}
}




bool syntaxAnalizer::isPartOf_expressionOperator(string operator_value){
	bool returnValue = false;
	vector<string>:: iterator it = operator_expression.begin();
	while(it != operator_expression.end()){
		if(*it == operator_value){
			returnValue = true;
			break;
		}else ++it;
	}

	return returnValue;
}

string syntaxAnalizer::stack_ToString(deque<Token*> varStack){
	string returnValue;

	while(!varStack.empty()){
		returnValue = returnValue + varStack.front()->m_lexem;
		varStack.pop_front();
	} 
	return returnValue;
}




string syntaxAnalizer::returnErrorMessage( Token* token, bool searchByStackTop){

	string returnString = "";
	string addOperators = "+-";
	string relOperators = "<><=>==";
	//EMPTY_SEMANTIC_STACKS();

	//<lexem, code, classificatin>
	// example <'<>', relOp, operator>
	map<string, PairCodeRecord>::iterator it_code;
	for(it_code = m_code.begin(); it_code!= m_code.end() ; ++ it_code)
		if(it_code->second.code.compare(m_stackTop) == 0)
			break;

	map<string, PairCodeRecord>::iterator it_lexem;
	it_lexem = m_code.find(m_stackTop);

	if(searchByStackTop) 
	{
		/*if(m_stackTop == "type" || m_stackTop =="typeNumeric"){
		returnString = "Invalid variable declaration  on line:	" + intToStr(token->m_location);
		return returnString;
		}*/

		if(m_stackTop == "expr"){
			returnString = "(SER#6): Invalid expression before '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}

		if(m_stackTop == "fParams" || m_stackTop == "funcDef_list" || m_stackTop == "funcDef" ){
			returnString = "(SER#6): Invalid function parameter list or function definition on line# " + intToStr(token->m_location);
			return returnString;
		}
		if(m_stackTop == "funcBody" ){
			returnString = "(SER#6): Invalid function deffinition or messing '{' before '" + getType(token->m_lexem) +"' on line# " + intToStr(token->m_location);
			return returnString;
		}
		/*				if(m_stackTop == "indiceIdnestList_tail" || m_stackTop == "indice" || m_stackTop == "indice_list" ){
		returnString = "(SER#6): Invalid index  on line:	" + intToStr(token->m_location);
		return returnString;
		}*/

		if(m_stackTop == "varDeclStatement_tail"){
			returnString = "(SER#6): Invalid variable declaration or statement on line# " + intToStr(token->m_location);
			return returnString;
		}

		if(m_stackTop == "exp_"){
			returnString = "Relational operator is expected before '" + getType(token->m_lexem) +"' on line# " + intToStr(token->m_location);
			return returnString;
		}



		if(m_stackTop == "varDeclFunctDef_hed"){
			returnString = "(SER#6): Invalid variable declaration or function deffinition  on line# " + intToStr(token->m_location);
			return returnString;
		}

		if(m_stackTop == "varDeclFunctDef_tail"){
			returnString = "(SER#6): Invalid variable declaration on line# " + intToStr(token->m_location);
			return returnString;
		}


		if(m_stackTop == "typeNumeric"){
			returnString = "(SER#6): Invalid numeric type on line# " + intToStr(token->m_location);
			return returnString;
		}


		if(m_stackTop == "fParams"){
			returnString = "(SER#6): Invalid parameter list on line# " + intToStr(token->m_location);
			return returnString;
		}


		if(m_stackTop == "statement_list" || m_stackTop =="restOfStatment" || m_stackTop =="statement" ){
			returnString = "(SER#6): Invalid statement on line# " + intToStr(token->m_location);
			return returnString;
		}

		/*		if(m_stackTop == "assignmentStatment" ){
		returnString = "(SER#6): Invalid assignment statement  on line:	" + intToStr(token->m_location);
		return returnString;
		}
		*/
		if(m_stackTop.compare("then") ==0){
			returnString = "(SER#7): Missing 'then' keyword in if statement on line# " + intToStr(token->m_location);
			return returnString;
		}
		if(m_stackTop.compare("else")==0){
			returnString = "(SER#7): Missing 'else' keyword in if statement on line# " + intToStr(token->m_location) ;
			return returnString;
		}
		if(m_stackTop.compare("arraySize_list")==0){
			if(token->m_type == "numeric" && ((TokenNumeric*)token)->numericType == "floatValue"){


				returnString = "(SER#6): Invalid type for array size 'float' '" + getType(token->m_lexem) + "'on line# " + intToStr(token->m_location);
				return returnString;
			}
		}

		if(m_stackTop.compare("intValue") ==0){
			returnString = "(SER#6): Invalid integer value '" + getType(token->m_lexem) +"' on line# " + intToStr(token->m_location);
			return returnString;

		}

		if(m_stackTop.compare("floatValue") ==0){
			returnString = "(SER#6): Invalid float value '" + getType(token->m_lexem) +"' on line# " + intToStr(token->m_location);
			return returnString;

		}

		// if id in the stack
		if(m_stackTop == "id"){

			if(it_lexem!= m_code.end() && it_lexem->second.code == "ID" ){
				returnString = "(SER#7): Missing identifier before '" + getType(token->m_lexem) + "'" + " on line# " + intToStr(token->m_location);
				return returnString;
			}
		}

		if(m_stackTop.compare("(") ==0){
			returnString = "(SER#7): Missing '(' befor token '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}

		if(m_stackTop.compare(")") ==0){
			returnString = "(SER#7): Missing ')' befor token '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}

		if(m_stackTop.compare(";") ==0){
			returnString = "(SER#7): Missing ';' befor token '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}
		if(m_stackTop.compare("{") ==0){
			returnString = "(SER#7): Missing '{' befor token '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}
		if(m_stackTop.compare("}") ==0){
			returnString = "(SER#7): Missing '}' befor token '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}

	}else{

		// if reserved word in the stack
		if(it_lexem != m_code.end() && it_lexem->second.classification == "reservedWord"){
			returnString = "(SER#7): Missing key word " + m_stackTop +	"before	'" + getType(token->m_lexem) + "' " + "	on line# " + intToStr(token->m_location);
			return returnString;

		}

		// outputs in operator
		if(it_code !=m_code.end() && it_code->second.classification != token->m_type){
			if(token->m_lexemCode == "ID")
				returnString = "(SER#7): Missing " + getType(it_code->second.code) + " before identifier '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			else if(token->m_type == "reservedWord")
				returnString = "(SER#7): Missing " + getType(it_code->second.code) + " before keyword '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			else
				returnString = "(SER#7): Missing " + getType(it_code->second.code) + " before '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location);
			return returnString;
		}



		if(token->m_lexem.compare("then")==0){
			returnString = "(SER#8): Unexpected keword 'then' before '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location) ;
			return returnString;
		}
		if(token->m_lexem.compare("else")==0){
			returnString = "(SER#8): Unexpected keword 'else' before '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location) ;
			return returnString;
		}

		if(token->m_lexemCode.compare("ID")==0){
			returnString = "(SER#8): Unexpected identifier '" + getType(token->m_lexem) + "' on line# " + intToStr(token->m_location) ;
			return returnString;
		}

	}
	return returnString;
}

string syntaxAnalizer::intToStr(int integerValue){

	ostringstream Convert;
	Convert<<integerValue;
	return Convert.str();
}
bool syntaxAnalizer::return_levelOfParsing(string level_nonterminal){
	bool returnValue = false;
	return returnValue;
}

void syntaxAnalizer::update_levelOfParsing(string level_nonterminal, string action){

	if(action == "push"){
		if(level_nonterminal == "prog" ){
			m_levelOfParrsing["classDecl"] = true;
		}
		if(level_nonterminal == "progBody"){
			m_levelOfParrsing["classDecl"] = false;
		}
		if(level_nonterminal == "varDeclFunctDef_tail"){
			m_levelOfParrsing["funcDef_list"] = true;
		}

	}

	if(action == "pop"){

		//varDeclFunctDef_tail -> epsilon
		//funcDef_list -> epsilon
		if(level_nonterminal == "varDeclFunctDef_tail"){
			m_levelOfParrsing["funcDef_list"] = false;
		}

	}

}

void syntaxAnalizer::insert_levelOfParsing(){

	m_levelOfParrsing["funcDef_list"] = false;
	m_levelOfParrsing["classDecl"] = false;
}

void syntaxAnalizer::outputSemErr(const string& text)
{
	//output(text);
	std::cout<<text;
	if(m_semantic_errors_file->good())
		(*m_semantic_errors_file)<<text;
	m_numberOfSemanticErrors++;
}

void syntaxAnalizer::outputIntoFile(const string& text)
{
	errorCount++;
	if(numberOfPasses <= 1)
		return;
	std::cout<<text;
	//output(text);
	if(m_syntax_errors_file->good())
		(*m_syntax_errors_file)<<text;
}

void syntaxAnalizer::detectEmpetyCells(){


}




void syntaxAnalizer::printRule(const map<PairIndex, rulleMap>::iterator& it)
{
	//return;
	if(m_derivations_file->good() && it != m_topDownParsingTable.end() && it->second.rullID != -1)
	{
		stringstream str;

		vector<string> rightSide = it->second.rightSide;
		str << "Rule: " << it->second.keyNonTerminal << " -> ";
		for (vector<string>::iterator printit = rightSide.begin(); printit!= rightSide.end(); ++printit){

			str<< *printit << " ";
		}
		str<<endl;
		output(str.str());
	}
}

void syntaxAnalizer::printStack()
{
	if(m_derivations_file->good())
	{/////////////////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		stringstream str;
		str << "Stack: ";
		for(deque<string>::const_reverse_iterator it = m_parsStack._Get_container().rbegin(); it != m_parsStack._Get_container().rend(); it++)
			str << *it << " ";
		str << endl;

		output(str.str());
	}
}



void syntaxAnalizer::output(const string& val)
{
	if(m_derivations_file)
		(*m_derivations_file)<<val;
}

string syntaxAnalizer::getType(const string& type)
{
	if(type == "relOp")
		return "relational operator";

	if(type =="assignOp")
		return "assignment operator" ;

	if(type =="addOp")   
		return "additional operator";

	if(type == "multOp" )  
		return "multiplication operator";

	if(type == "ID")
		return "identifier";
	if(type == "id")
		return "identifier";


	return type;
}


string nonTerminals[] = {"prog", "classDecl", "progBody", "funcDef", "funcBody", "varDeclFunctDef_list", "varDeclFunctDef_tail", "indiceIdnestList_tail", 
	"varDeclStatement_tail", "funcBody_", "statement", "assignmentStatment", "restOfStatment", "assignStat", "statBlock", "expr", "exp_", "relExpr", "arithExpr", 
	"arithExpr_", "sign", "term", "term_", "factor", "variable_", "idnest_list_", "idnest_", "factor_", "indice", "arraySize", "type", "typeNumeric", "fParams", 
	"aParams", "fParamsTail", "aParamsTail", "classDecl_list", "funcDef_list", "statement_list", "arraySize_list", "indice_list", "fParamsTail_list", 
	"aParamsTail_list", "assignOp", "relOp", "addOp", "multOp"};

string myTerminals[] = 	{"class", "id", "{", "}", ";", "program", "(", ")", ".", "[", "]", "for", "if", 
	"then", "else", "get", "put", "return", "+", "-", "floatValue", "intValue", "not", 
	"float", "int", ",", "=", "<", "<=", "<>", "==", ">", ">=", "or", "*", "/", "and", "$"};

string terminalCode[] ={"IF","THEN","ELSE","FOR","CLASS","INT","FLOAT","GET","PUT","RETURN","AND","NOT","OR","EQUAL",
	"NOT_EQUAL","LESS_THAN","GREATER_THAN","LESS_THAN_OR_EQUAL","GREATER_THAN_OR_EQUAL","SEMICOLON","COMMA","DOT","PLUS",
	"MINUS","MALTIPLICATION","DIVISION","ASSIGNMENT","LPAREN","RPAREN","LBRACE","RBRACE","LSQRBRACE","RSQRBRACE",
	"MULTYLINE_COMMENT","COMMENT","ERROR"};

string a_firtsPass[] = {"B", "C", "D", "D_","FP", "V", "F", "IV", "DIM", "marc_undefined", "validate_undefineds", "generate_function_marker"};

string a_secondPass[] = {"Validate_IF_type", "DIM", "V_for", "IV_for","B2", "C2","FP2", "V2", "F2", "IV2","Validate", "Validate_DIM", "Validate_Nest", "Validate_Func", "Validate_Param", "Validate_numberOf_parameters" , "Validate_return_type", "insert_return_type", "insert_bool_type", "is_type_bool",
	"insert_factor_", "ass_term_I", "ass_term.S", "ass_term_2I","ass_term_1S","ass_arithExp_I", "ass_arithExp.S", "ass_arithExp_2I","ass_arithExp_1S", "validateType", "validate_relType" , "validateType2", "insert_factor_var",
	"Validate_assign_type", "insert_expression", "validate_complex_type", "insert_expression_int", "insert_signature_param", "Validate_Signature_type",
	"D2", "D_2", "check_Dim_Count", "PoP_SemanticStack", "validate_put", "process_assignOp", "create_operation", "mark_ENDIF", "mark_ELSE","jump_ENDIF",
	"generate_ENDIF_marker",  "generate_ELSE_marker", "POP_jump_marker_stack", "Save_assignOp", "jump_FOR", "generate_FOR_marker", "generate_END_FOR_marker" ,"mark_END_FOR", "Validate_dimention_type", "compute_offset", "reserve_parameter_stack",  "jump_to_function",
	"process_jump_back", "reset_parameter_stack_pointer", "jump_end_program_marker", "put_end_program_marker", "replace_By_return_value", "generate_function_marker",
	"POP_ScopeHeararchy", "generate_classDecl_code", "generate_program_marker", "process_NOT" , "createSignOperator","createSignFactor", "copy_Runtime_parameter_liast",
	"processSignOperation", "process_get" , "IS_Function"};


syntaxAnalizer::syntaxAnalizer(void)
{
	//// debug
	m_scopeHeararchy.name = "scopeHeararchy";
	m_acumulater.name = "accumlater";
	m_currentSemanticStack.name = "currentSemanticStack";
	NUMBER_OF_BYTS_USED = 0;
	//// debug

	int size = sizeof(myTerminals)/sizeof(myTerminals[0]);
	copy(myTerminals,  myTerminals + size, back_inserter(m_allTerminsls));
	//	m_allTerminsls


	size = sizeof(nonTerminals)/sizeof(nonTerminals[0]);
	copy(nonTerminals,  nonTerminals + size, back_inserter(m_allnonTerminals));

	for(vector<string>::const_iterator i = m_allnonTerminals.begin(); i != m_allnonTerminals.end(); ++i) {
		vector<string> tempo(m_allTerminsls);
		//	m_topDownTable.insert(pair<string, vector<string>>(*i,tempo));

	}
	initializeRules();
	insertfistFollow();
	insertNonTerminals();
	fillCode();
	insert_levelOfParsing();	// determins what nonyerminal can be parsed at a particular level of code
	m_currentErrorLine = -1;
	m_numberOfSuccessfulScans = 3;
	m_errorLine = 0;
	m_extraThenIsAdded = false;
	m_extraElseIsAdded = false;
	m_cascadingErrorCount = 0;
	m_classCount = 0;
	m_programCount = 0;
	m_prog_Isadded = false;
	m_GlobalScop = new GlobalVar();
	SimpleVar::m_global_scope_var = m_GlobalScop;
	m_stackScope.push(m_GlobalScop);// global scop is pushed to the stack first
	m_semanticStep = 1;
	m_startSementicAction = false; // specifies when to start semantic action
	isSignaturVariable = false;
	m_validateVariable = false;
	numberOfPasses = 1;
	m_semanticActionTriger = "";
	m_scopeHeararchy.push(m_GlobalScop);
	m_numberOfSemanticErrors = 0;
	m_firstPassErrorCount = 0;
	lexicalErrorCount = 0;
	internalErrors = 0;
	errorCount = 0;
	m_cascadingErrorCount = 0; 
	m_numberOfSemanticErrors = 0; 
	jump_marker = 0;
	end_program_marker = "end_program_marker";
	functionCallStack = "functionCallStack";
	//declar function call stack pointer

	declar<<"functionCallStack"<<" dw 0"<<endl;
	NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
	declar<<"res 1000"<<endl;
	NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 1000;
	declar<<"functionCallStack_ponter"<<" dw 0"<<endl;
	NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;


	functionCallStack_ponter_recursion = "functionCallStack_ponter_recursion";
	declar<<"functionCallStack_recursion "<< "res 1000"<<endl;
	declar<<"functionCallStack_ponter_recursion"<<" dw 0"<<endl;
	functionCallStack_recursion = "functionCallStack_recursion";

	NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4 + 1000;
	//------------end declar function call stack poinet
	//---------------------------inisialize operator_expression-----------

	operator_expression.push_back("+");
	operator_expression.push_back("-");
	operator_expression.push_back("/");
	operator_expression.push_back("*");
	operator_expression.push_back("=");
	//operator_expression.push_back("(");
	operator_expression.push_back(")");
	operator_expression.push_back("<");
	operator_expression.push_back("<=");
	operator_expression.push_back(">");
	operator_expression.push_back(">=");
	operator_expression.push_back("and");
	operator_expression.push_back("or");
	operator_expression.push_back("==");
	operator_expression.push_back(",");
	operator_expression.push_back(";");

	//--------------------------------------------------------------------
	for(vector<string>::const_iterator i = m_allnonTerminals.begin(); i != m_allnonTerminals.end(); ++i)
	{
		for(vector<string>::const_iterator ii = m_allTerminsls.begin(); ii != m_allTerminsls.end(); ++ii){
			PairIndex newIndex(*i,*ii);
			m_topDownParsingTable.insert(pair<PairIndex, rulleMap>(newIndex, rulleMap()));

			terminalElementList elementList = m_nonTerminal[newIndex.indexNonTerminal];
			m_topDownParsingTable[newIndex].firstSet = elementList.m_firstTerminalList;
			m_topDownParsingTable[newIndex].followSet = elementList.m_followTerminalList;
		}
	}	
	//---------------- Initialize sergister stack
	initialize_regStack();
	//----------------

	fillTopDownTable();
	insert_dropOperators();
	insert_replaysOperator();

	for(int i = 0; i < sizeof(a_firtsPass)/sizeof(string); i++)
		m_semanticActions1[a_firtsPass[i]] = a_firtsPass[i];
	for(int i = 0; i < sizeof(a_secondPass)/sizeof(string); i++)
		m_semanticActions2[a_secondPass[i]] = a_secondPass[i];

}




syntaxAnalizer::~syntaxAnalizer(void)
{
}

void syntaxAnalizer::insertfistFollow(){
	string fileName = FOLLOW;
	string line;

	insertFirstSet();

	if(fileExists(fileName))
	{
		ifstream backstory (fileName);
		vector<string> result; 
		if (backstory.is_open())
		{
			//std::cout<<endl;
			while (backstory.good())
			{
				getline(backstory,line);
				spliter(line, result, '\t');
				if(result.size() == 0)
					continue;
				string terminalType = result[1];
				if(m_nonTerminal.find(result[0]) != m_nonTerminal.end()){
					m_nonTerminal[result[0]].insertRecord(terminalType,result );
				}
				else{
					//TransitionTableRecord record(result);
					m_nonTerminal.insert(pair<string, terminalElementList>(result[0], terminalElementList()));

					if(m_nonTerminal.find(result[0]) != m_nonTerminal.end()){
						m_nonTerminal[result[0]].insertRecord(terminalType,result );
					}
				}

				result.clear();
			}
			backstory.close();
			string ch;

		}
		else
		{
			std::cout << "Unable to open file" << std::endl << std::endl;
		}

	}
	else
	{
		//cout << endl << endl << "Error: file '"<< fileName << "' does not exist" <<endl;
	}

}


void syntaxAnalizer::insertFirstSet(){

	string fileName = FIRST;
	string line;
	if(fileExists(fileName))
	{
		ifstream backstory (fileName);
		vector<string> result; 
		if (backstory.is_open())
		{
			//cout<<endl;
			while (backstory.good())
			{
				getline(backstory,line);
				spliter(line, result, '#');
				if(result.size() == 0)
					continue;
				string leftHS = result[0];
				vector<string> rightHS;
				string rhs = result[1]; //(result.begin() + 1, result.end()); 

				spliter(rhs, rightHS, ' ');
				m_FIRSTset.insert(pair<string, vector<string>>(leftHS,rightHS));
				rightHS.clear();

				result.clear();
			}
			backstory.close();
			string ch;
		}
		else
		{
			std::cout << "Unable to open file" << std::endl << std::endl;
		}

	}
}

void syntaxAnalizer::printContent(){
	return;
	typedef map<string, terminalElementList>::const_iterator MapIterator;
	for (MapIterator iter = m_nonTerminal.begin(); iter != m_nonTerminal.end(); iter++)
	{
		cout << "Key: " << iter->first << endl << "Values:" << endl;
		for(int i = 0; i < iter->second.m_firstTerminalList.size(); i++ )
			cout<< "\t" << iter->second.m_firstTerminalList[i] << endl;
	}

	for (MapIterator iter = m_nonTerminal.begin(); iter != m_nonTerminal.end(); iter++)
	{
		cout << "Key: " << iter->first << endl << "Values:" << endl;
		for(int i = 0; i < iter->second.m_followTerminalList.size(); i++ )
			cout<< "\t" << iter->second.m_followTerminalList[i] << endl;
	}


}

void syntaxAnalizer::fillCode(){

	string fileName = CODEFILENAME;
	//cout<<fileName;
	string line;
	if(fileExists(fileName))
	{

		ifstream codeFile (fileName);
		vector<string> result; 
		if (codeFile.is_open())
		{
			//cout<<endl;
			while (codeFile.good())
			{
				getline(codeFile,line);
				spliter(line, result, '\t');				// if							IF			reservedWord
				m_code.insert(pair<string, PairCodeRecord>(result.at(0), PairCodeRecord(result.at(1), result[2])));
				//cout<<m_code[result.at(0)]<<endl;
				result.clear();

			}
			codeFile.close();
			string ch;
			//cin>>ch;
		}
		else
		{
			std::cout << "Unable to open file" << std::endl << std::endl;
		}

	}
	else
	{
		cout << endl << endl << "Error: file '"<< fileName << "' does not exist" <<endl;
	}

}





void syntaxAnalizer::initializeRules(){

	string fileName = RULLS;
	int index = 1;
	string line;
	if(fileExists(fileName))
	{
		ifstream backstory (fileName);
		vector<string> result; 
		if (backstory.is_open())
		{
			//cout<<endl;
			while (backstory.good())
			{

				//backstory.getline(line);
				getline(backstory,line);
				spliter(line, result, '#');
				if(result.size() == 0)
					continue;

				string key = result[0];
				vector<string> elementList;
				spliter(result[1], elementList, '\t' );
				//spliter(result[1], elementList, ' ' );
				m_rulles.insert(pair<int, rulleMap>(index,rulleMap(key,elementList, index, vector<string>())));

				if(result[1].compare("EPSILON") == 0)
					m_epsilon_nonterminal.push_back(result[0]);

				index++;
				result.clear();
			}
		}

	}


}


void syntaxAnalizer::fillTopDownTable(){

	for (std::map<int,rulleMap>::iterator it=m_rulles.begin(); it!=m_rulles.end(); ++it){

		string nonTerminal = it->second.keyNonTerminal;

		string rhs = "";
		for(vector<string> ::iterator vectorIT = it->second.rightSide.begin(); vectorIT != it->second.rightSide.end(); ++ vectorIT)
			rhs = rhs + *vectorIT  + " ";

		rhs.resize(rhs.size() - 1);

		map<string, vector<string>>::iterator rhsIterator = m_FIRSTset.find(rhs);

		vector<string> firstList = rhsIterator->second;
		for(vector<string>::iterator vectorIt = firstList.begin(); vectorIt!=firstList.end(); ++vectorIt){
			if(vectorIt->compare("EPSILON") == 0){

				map<string, terminalElementList>::iterator nonTerminalIt = m_nonTerminal.find(nonTerminal);
				if(nonTerminalIt == m_nonTerminal.end())
					cout << "Error: Top Down Parsing Table problem!" << endl;

				vector<string> followList = nonTerminalIt->second.m_followTerminalList;

				for(vector<string>::iterator vectorItfOLL = followList.begin(); vectorItfOLL!=followList.end(); ++vectorItfOLL){

					PairIndex newIndex(it->second.keyNonTerminal, *vectorItfOLL);

					if(m_topDownParsingTable[newIndex].rullID == -1)
						m_topDownParsingTable[newIndex] = it->second;
				}

			}
			else{
				PairIndex newIndex(it->second.keyNonTerminal, *vectorIt);

				if(m_topDownParsingTable[newIndex].rullID == -1)
					m_topDownParsingTable[newIndex] = it->second;

			}
		}
	}
}



void syntaxAnalizer::pars(string fileName){
	m_derivations_file = new ofstream(DERIVATIONSOUTPUT); // creates a file to output derivations
	m_syntax_errors_file  = new ofstream(ERROROUTPUTFILE_SYNTAX_ANALYZER); // creates a file to write error messages
	m_semantic_errors_file = new ofstream(ERROROUTPUTFILE_SEMANTIC_ANALYZER); // creates a file to write error messages
	m_symbolTableFile = new ofstream(SYMBOLTABLE);

	cout<<"Processing file: "<< fileName<<endl<<endl;

	while(numberOfPasses < 3){ 

		m_firstPassErrorCount += getErrorCount();

		errorCount = 0;
		tokenIsMatched = false;
		m_parsStack.push("$");
		m_parsStack.push("prog");
		m_stackTop = "prog";
		LexicalAnalizer lexicalAnalizer;
		//int iteration = 1;

		m_semanticStep = 1;
		m_startSementicAction = false; // specifies when to start semantic action
		isSignaturVariable = false;
		m_validateVariable = false;
		m_semanticActionTriger = "";
		m_numberOfSemanticErrors = 0;

		m_currentErrorLine = -1;
		m_errorLine = 0;
		m_extraThenIsAdded = false;
		m_extraElseIsAdded = false;
		m_cascadingErrorCount = 0;
		m_classCount = 0;
		m_programCount = 0;
		m_prog_Isadded = false;

		while(!m_currentSemanticStack.empty())
			m_currentSemanticStack.pop();
		while(!m_acumulater.empty())
			m_acumulater.pop();
		while(!m_scopeHeararchy.empty())
			m_scopeHeararchy.pop();
		m_scopeHeararchy.push(m_GlobalScop);

		lexicalAnalizer.fillTransitionTable(); // creates a data structure for transition table
		lexicalAnalizer.fillCode();// creates a data structure for Tokens' CODs
		lexicalAnalizer.fillReservedWords();// creates a ata structure forreserved words

		printStack();

		Token* token;
		Token* processedToken;
		ifstream file(fileName);//file to be scaned

		if (file.is_open())
		{
			ofstream errorFile, sourceFileOutput;
			sourceFileOutput.open(SOURCEFILEOUTPUT, ios::ate); //open file to output results
			errorFile.open(ERROROUTPUTFILE, ios::ate);//open file to output errors
			//------------

			while(file.good())
			{
				tokenIsMatched = false;
				token = lexicalAnalizer.nextToken(file);
				if(m_currentErrorLine < token->m_location){
					m_numberOfSuccessfulScans = 3;
					m_currentErrorLine = token->m_location;

				}

				if(token->m_type.compare("whiteSpace") != 0)// if it is not a white space character
				{
					if(dynamic_cast<TokenERROR*>(token) == NULL){//if null token is not error type
						token->outputIntoFile(sourceFileOutput); //output result into an approFpriate file
						processedToken = token;

						if( processedToken->m_lexem == "program")
							m_programCount++;
























































































































						if( processedToken->m_lexem == "class")
							m_classCount++;

						if( processedToken->m_lexem == "class" && m_programCount > 0)
						{
							stringstream str;
							str<<"SYNTAX ERROR (SER#9): No class declaration is allowed after 'program' function on line "<< processedToken->m_location<<endl;
							outputIntoFile(str.str());
						}
						//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
						output("Received token: " + processedToken->m_lexem + "\r\n");

						try
						{
							while(!tokenIsMatched){
								tokenIsMatched = processToken(processedToken);
							}
						}	
						catch(...)
						{
							EMPTY_SEMANTIC_STACKS();
							break;
						}
					}
					else if(numberOfPasses == 2) {

						cout << token->m_lexem<<"  "<<((TokenERROR*)(token))->m_errorBody<<"  "<<token->m_location<<endl;
						token->outputIntoFile(errorFile);// if it is an error, output error message into an error file
						lexicalErrorCount++;
					}

				}
			}

			//--------------------------------------
			//output("Input token: EOF\r\n");
			try
			{
				processToken(new Token("$", "EOF", 0, ""));
			}
			catch(...)
			{}
			if(m_programCount > 1)
			{
				stringstream str;
				str<< "SYNTAX ERROR (SER#4):: MORE THAN ONE PROGRAM FUNCTION IS DEFINED "<<endl;
				outputIntoFile(str.str());
			}
			if(m_programCount == 0)
			{
				stringstream str;
				str<< "SYNTAX ERROR (SER#5): NO PROGRAM FUNCTION IS DEFINED "<<endl;
				outputIntoFile(str.str());
			}

			errorFile.close();
			sourceFileOutput.close();
		}
		else
		{
			cout << "ERROR: failed to open file " << fileName << endl;
			internalErrors++;
		}

		numberOfPasses++;
		m_stackScope.push(m_GlobalScop);
		while(!m_acumulater.empty())
			m_acumulater.pop();
		while(!m_currentSemanticStack.empty())
			m_currentSemanticStack.pop();
	}


	if(m_symbolTableFile->good())
		m_GlobalScop->cout_(*m_symbolTableFile);
	//m_GlobalScop->cout_(cout);

	generatecode();

	if(internalErrors == 0)
	{
		cout << "file parsing is finished" << endl;

		cout << "----------------------------------------" << endl;
		cout << lexicalErrorCount << " Lexical ERROR:s"<<endl;
		cout << errorCount << " Syntax ERROR:s"<<endl;
		cout << m_cascadingErrorCount << " CASCADING ERRORS:s"<<endl;
		cout << m_numberOfSemanticErrors << " SEMANTIC ERROR:s" <<endl;

	}



	m_derivations_file->close();
	delete m_derivations_file;

	m_syntax_errors_file->close();
	delete m_syntax_errors_file;
	m_semantic_errors_file->close();
	delete m_semantic_errors_file;

}

bool syntaxAnalizer::processToken(Token* token){


	string lexem;
	//--------------------------semantic action
	if(m_currentToken != NULL)
		m_lastToken = *m_currentToken;
	m_currentToken = token;

	if(numberOfPasses == 1){

		if(isSemanticAction1(m_parsStack.top())){
			m_semanticActionTriger = m_parsStack.top();
			m_parsStack.pop();
			analizeSemanticAction(m_semanticActionTriger);
			m_semanticActionTriger = "";
			m_stackTop = m_parsStack.top();
		}
		else if(isSemanticAction2(m_parsStack.top())){
			m_parsStack.pop();
			m_stackTop = m_parsStack.top();

		}
	}else if(numberOfPasses == 2){


		if(isSemanticAction2(m_parsStack.top())){
			m_semanticActionTriger = m_parsStack.top();
			m_parsStack.pop();
			analizeSemanticAction(m_semanticActionTriger);
			m_semanticActionTriger = "";
			m_stackTop = m_parsStack.top();
		}
		else if(isSemanticAction1(m_parsStack.top())){
			m_parsStack.pop();
			m_stackTop = m_parsStack.top();

		}
	}
	//----------------------------



	if(token->m_lexem.compare("$") == 0){

		if(m_parsStack.top().compare("$") != 0)
		{
			if(m_prog_Isadded){

				stringstream str;
				str<<"SYNTAX ERROR (SER#2): Source file is not compilable=> Invalid structure	 "<<endl;
				outputIntoFile(str.str());

			}
			string stackTop = m_parsStack.top();
			if(stackTop != "funcDef_list"){

				stringstream str;
				str<< "SYNTAX ERROR (SER#1): End of file is reached before ';'" <<endl;
				outputIntoFile(str.str());
			}
			if(stackTop == "funcDef_list"){
				/*stringstream str;
				str << "Rule: funcDef_list -> EPSILON" << endl;
				output(str.str());*/
				m_parsStack.pop();
				if(m_parsStack.top() == "validate_undefineds" && numberOfPasses == 1){
					validateUndefinedParameters();
				}
				if(m_parsStack.top() == "put_end_program_marker" && numberOfPasses == 2){
					asmcode<<"end_program_marker"<<endl;
					asmcode<<"hlt"<<endl;
				}

			}
			while(m_parsStack.top().compare("$") != 0)
			{
				m_parsStack.pop();
			}
		}
		return true;
	}

	if(m_parsStack.top().compare("$") == 0 && token->m_lexem.compare("$") != 0){
		m_prog_Isadded = true;
		m_parsStack.push("prog");
		if(!synchronizingMethod_prog(token))
			return true;
		printStack();
	}



	if(token->m_lexemCode.compare("ID") == 0)
		lexem = "id";
	else 
		if(token->m_lexemCode.compare("NUM") == 0){
			TokenNumeric tokrnNum = *((TokenNumeric*)token);
			if(tokrnNum.numericType.compare("intValue") == 0)
				lexem = "intValue";
			else 
				lexem = "floatValue";
		}
		else 
			lexem =  token->m_lexem;
	if(m_stackTop.compare(lexem) != 0){
		//m_topDownParsingTable
		//EMPTY_SEMANTIC_STACKS();
		PairIndex index(m_stackTop,lexem);
		map<PairIndex, rulleMap>::iterator it = m_topDownParsingTable.find(index);

		if(it != m_topDownParsingTable.end()){
			printRule(it);

			if(errorChecking(it, lexem, token)) 
				return true;

			if(index.indexNonTerminal != m_stackTop || index.indexTerminal != lexem)
			{
				if((it = m_topDownParsingTable.find(PairIndex(m_stackTop,lexem))) == m_topDownParsingTable.end())
					return false;
				printRule(it);
			}



			rulleMap rule =it->second;
			if(it->second.rullID > 0){

				if(rule.rightSide[0].compare("EPSILON")==0)
				{
					if(!m_parsStack.empty()) m_parsStack.pop();
					m_stackTop = m_parsStack.top();
					return false;
				}

				if(it->second.keyNonTerminal.compare(m_stackTop) == 0){

					if(!m_parsStack.empty()) m_parsStack.pop();

					m_stackTop = it->second.rightSide[0];

					for (vector<string>::reverse_iterator rit = it->second.rightSide.rbegin(); rit!= it->second.rightSide.rend(); ++rit){
						m_parsStack.push(*rit);
					}
					printStack();

				}
				else{
					return true;
				}
			}

		}

		else
			if((find(m_allTerminsls.begin(), m_allTerminsls.end(), m_stackTop)!=m_allTerminsls.end()) && (m_stackTop.compare(lexem) !=0)){

				m_cascadingErrorCount++;
				EMPTY_SEMANTIC_STACKS();
				//=========================output error message
				if(m_stackTop == "then"){
					if(! m_extraThenIsAdded) {
						if(m_numberOfSuccessfulScans >2){

							m_errorLine = token->m_location;
							m_numberOfSuccessfulScans = 0;
							{
								stringstream str;
								str<< "SYNTAX ERROR (SER#7): Missing '" << getType(m_stackTop) << "' before '"<< getType(token->m_lexem)<< "' " <<"	on line# "<< token->m_location<<endl;
								outputIntoFile(str.str());
							}
						}	
					}else
						m_extraThenIsAdded = false;

				} else 	if(m_stackTop == "else"){
					if(! m_extraElseIsAdded) {
						if(m_numberOfSuccessfulScans >2){
							m_errorLine = token->m_location;
							m_numberOfSuccessfulScans = 0;

							string message;
							{
								stringstream str;
								str<< "SYNTAX ERROR (SER#7): Missing '" << getType(m_stackTop) << "' before '"<< getType(token->m_lexem) << "'	" <<"	on line# "<< token->m_location<<endl;
								outputIntoFile(str.str());
							}

						}

					}else
						m_extraElseIsAdded = false;
				}else{
					if(m_numberOfSuccessfulScans >2){
						m_errorLine = token->m_location;

						string message;
						if((message = returnErrorMessage(token, true)).empty())
						{
							stringstream str;
							str<< "SYNTAX ERROR (SER#7): Missing '" << getType(m_stackTop) << "' before '"<< getType(token->m_lexem) << "'	" <<"	on line# "<< token->m_location<<endl;
							outputIntoFile(str.str());
						}
						else 
						{
							stringstream str;
							str<< "SYNTAX ERROR "<< message<<endl;
							outputIntoFile(str.str());
						}
						m_numberOfSuccessfulScans = 0;
					}
					if(m_stackTop == "intValue" && lexem == "floatValue")
						tokenIsMatched = true;

				}
				//===========================================

				if(!m_parsStack.empty()) m_parsStack.pop();
				if(m_parsStack.top() == "$")
				{
					m_parsStack.push("prog"); ////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					EMPTY_SEMANTIC_STACKS();
					m_prog_Isadded = true;
					if(!synchronizingMethod_prog(token))
						return true;
					printStack();
				}

			}


	}
	else{

		m_acumulater.push(m_currentToken);
		if(!m_parsStack.empty()) 
		{
			m_parsStack.pop();
		}
		m_stackTop = m_parsStack.top();
		tokenIsMatched = true;
		m_numberOfSuccessfulScans++;
		printStack();
	}


	return tokenIsMatched;

}


void syntaxAnalizer:: insertNonTerminals(){

	string fileName = FIRSTFOLLOW;
	string line;


	if(fileExists(fileName))
	{
		ifstream backstory (fileName);
		vector<string> result; 
		if (backstory.is_open())
		{
			//cout<<endl;
			while (backstory.good())
			{
				getline(backstory,line);
				spliter(line, result, '\t');
				if(result.size() == 0)
					continue;
				string terminalType = result[1];
				if(m_nonTerminal.find(result[0]) != m_nonTerminal.end()){
					m_nonTerminal[result[0]].insertRecord(terminalType,result );
				}
				else{
					//TransitionTableRecord record(result);
					m_nonTerminal.insert(pair<string, terminalElementList>(result[0], terminalElementList()));

					if(m_nonTerminal.find(result[0]) != m_nonTerminal.end()){
						m_nonTerminal[result[0]].insertRecord(terminalType,result );
					}
				}

				result.clear();
			}
			backstory.close();
			string ch;

		}
		else
		{
			std::cout << "Unable to open file" << std::endl << std::endl;
		}

	}
	else
	{
		//cout << endl << endl << "Error: file '"<< fileName << "' does not exist" <<endl;
	}



}



bool syntaxAnalizer::errorChecking(map<PairIndex, rulleMap>::iterator& it, string token, Token* currentToken){
	bool escapeToken = false;


	if(it->second.rullID < 0 )
	{
		EMPTY_SEMANTIC_STACKS();

		if(m_stackTop == "progBody" && m_classCount == 0 &&  m_programCount == 0)
		{
			stringstream str;
			str<< "SYNTAX ERROR (SER#3): No function declaration is allowed before 'program' function or outside of class"<< currentToken->m_location<<endl;
			outputIntoFile(str.str());
		}
		m_cascadingErrorCount++;
		//========================== consider Later==============
		if(synchronizingMethod(currentToken)){
			EMPTY_SEMANTIC_STACKS();
			while((m_stackTop = m_parsStack.top()) == token)
				m_parsStack.pop();
			printStack();
			it = m_topDownParsingTable.find(PairIndex(m_stackTop,token));

			return false;

		}
		if((token == "$" )|| ((find(it->second.followSet.begin(), it->second.followSet.end(), token)!=it->second.followSet.end())) || ((find(m_dropOperators.begin(), m_dropOperators.end(), it->first.indexNonTerminal)!= m_dropOperators.end())) ){
			//===============output Error message when stack is chnagd===============
			EMPTY_SEMANTIC_STACKS();

			if(m_numberOfSuccessfulScans >2){
				m_errorLine = currentToken->m_location;
				string message;
				if((message = returnErrorMessage( currentToken, true)).empty()){
					{
						stringstream str;
						str<< "SYNTAX ERROR (SER#7): Missing '" << getType(m_stackTop) << "' before '"<< getType(currentToken->m_lexem) << "'	" <<" on line# "<< currentToken->m_location << endl;
						outputIntoFile(str.str());
					}
					m_numberOfSuccessfulScans = 0;

				}
				else 
				{
					stringstream str;
					str<< "SYNTAX ERROR "<< message<<endl;
					outputIntoFile(str.str());
				}

			}
			//=================================================================

			if(m_stackTop == "intValue" && token == "floatValue")//?????????????????????????????????????????////
				escapeToken = true;
			if(!m_parsStack.empty()) m_parsStack.pop();
			if(m_parsStack.top() == "$")
				m_parsStack.push("prog");
			m_prog_Isadded = true;
			if(!synchronizingMethod_prog(currentToken))
				return true;
			m_stackTop = m_parsStack.top();
			printStack();

			//EMPTY_SEMANTIC_STACKS();

			if((it = m_topDownParsingTable.find(PairIndex(m_stackTop,token))) == m_topDownParsingTable.end())
				return false;

		}
		// Replace nonterminal with an appropriate one that is possible to pars
		else if(find(m_replaceOperator.begin(), m_replaceOperator.end(), token) != m_replaceOperator.end()){
			EMPTY_SEMANTIC_STACKS();
			if(replaceEronusNonterminal(token) != ""){

				printStack();
				if(m_numberOfSuccessfulScans >2){ 
					m_errorLine = currentToken->m_location;
					{
						stringstream str;
						str<< "SYNTAX ERROR (SER#8): Unexpected '" <<token <<"' on line# "<< currentToken->m_location<<endl;
						outputIntoFile(str.str());
					}

					m_numberOfSuccessfulScans = 0;

				};
				if((it = m_topDownParsingTable.find(PairIndex(m_stackTop,token))) == m_topDownParsingTable.end())
					return false;

			}
		}
		else if( token!="$" && ((find(it->second.followSet.begin(), it->second.followSet.end(), token)==it->second.followSet.end())) || ((find(it->second.firstSet.begin(), it->second.firstSet.end(), token)==it->second.firstSet.end()))){
			escapeToken = true;
			EMPTY_SEMANTIC_STACKS();
			if(useEpsilonRule(m_stackTop)){

				string message;
				if(m_numberOfSuccessfulScans >2){ // if there is no error message for that particular terminal printed
					if(!(message = returnErrorMessage( currentToken, true)).empty()){

						{
							stringstream str;
							str<< "SYNTAX ERROR "<< message<<endl;
							outputIntoFile(str.str());
						}
						m_numberOfSuccessfulScans = 0;

					}
				}
				m_parsStack.pop();
				printStack();
				m_stackTop = m_parsStack.top();
				return false; // when there is a nonterminal in the stack that can be evaluated to EPSILON should be removed 
			}
			// escape token and print output
			//===============output Error message when token has to be dropped ===============
			if(m_numberOfSuccessfulScans >2){


				string message;
				if((message = returnErrorMessage( currentToken, true)).empty()){	// error case for 'true' is   'for()'
					if(m_errorLine < currentToken->m_location){
						m_errorLine = currentToken->m_location;
						m_numberOfSuccessfulScans = 0;

						if(currentToken->m_type.compare("reservedWord") == 0)
						{
							stringstream str;
							str<< "SYNTAX ERROR (SER#8): Unexpected reserved word '" + getType(currentToken->m_lexem) + "' on line# " << currentToken->m_location << endl;
							outputIntoFile(str.str());
						}
						else if(currentToken->m_lexemCode == "ID")
						{
							stringstream str;
							str<< "SYNTAX ERROR (SER#8): Unexpected identifier '"<< getType(currentToken->m_lexem)<<"' on line# " << currentToken->m_location << endl;
							outputIntoFile(str.str());
						}
						else if(currentToken->m_type == "numeric")
						{
							stringstream str;
							str<< "SYNTAX ERROR (SER#8): Unexpected number '"<< getType(currentToken->m_lexem)<<"' on line# " << currentToken->m_location << endl;
							outputIntoFile(str.str());
						}

						else
						{
							stringstream str;
							str<< "SYNTAX ERROR (SER#8): Unexpected  '"<< getType(currentToken->m_lexem)<<"' on line# " << currentToken->m_location << endl;
							outputIntoFile(str.str());
						}
					}


				}
				else {
					if(m_errorLine < currentToken->m_location ){
						m_errorLine = currentToken->m_location;
						m_numberOfSuccessfulScans = 0;

						{
							stringstream str;
							str<< "SYNTAX ERROR "<< message <<endl;
							outputIntoFile(str.str());
						}
					}
				}
			}

			//=================================================================


		}
		else if((find(m_allTerminsls.begin(), m_allTerminsls.end(), m_stackTop)!=m_allTerminsls.end()) && m_stackTop.compare(token) !=0){

			EMPTY_SEMANTIC_STACKS();

			string message;
			if((message = returnErrorMessage( currentToken, true)).empty()){
				if(currentToken->m_type.compare("reservedWord") == 0)
				{
					stringstream str;
					str<< "SYNTAX ERROR (SER#7): Missing reserved word '" + getType(currentToken->m_lexem) + "'	on line# " << currentToken->m_location << endl;
					outputIntoFile(str.str());
				}
				else if(currentToken->m_lexemCode == "ID")
				{
					stringstream str;
					str<< "SYNTAX ERROR (SER#7): Missing identifier '"<< getType(currentToken->m_lexem) <<"' on line# " << currentToken->m_location << endl;
					outputIntoFile(str.str());
				}
				else

				{
					stringstream str;
					str<< "SYNTAX ERROR (SER#7): Missing " << getType(m_stackTop) <<" before " <<token << " on line# "<< currentToken->m_location<<endl;
					outputIntoFile(str.str());
				}
			}
			else 
			{
				stringstream str;
				str<< "ERROR: "<< message <<endl;
				outputIntoFile(str.str());
			}

			if(m_stackTop == "intValue" && token == "floatValue")
				escapeToken = true;

			if(!m_parsStack.empty()) m_parsStack.pop();
			if(m_parsStack.top() == "$")
				m_parsStack.push("prog");
			m_prog_Isadded = true;
			if(!synchronizingMethod_prog(currentToken))
				return true;
			m_stackTop = m_parsStack.top();
			printStack();
		}


	}		

	return escapeToken;


}


void syntaxAnalizer::insert_dropOperators(){

	m_dropOperators.push_back("assignOp");
	m_dropOperators.push_back("relOp");
	m_dropOperators.push_back("addOp");
	m_dropOperators.push_back("multOp");

}

void syntaxAnalizer::insert_replaysOperator(){
	m_replaceOperator.push_back("if");
	m_replaceOperator.push_back("get");
	m_replaceOperator.push_back("put");
	m_replaceOperator.push_back("return");
	m_replaceOperator.push_back("for");
	m_replaceOperator.push_back("else");
	m_replaceOperator.push_back("then");
}

string syntaxAnalizer::replaceEronusNonterminal(const string& nonterminal){
	string replaceBy_nonterminal = "";
	map<int,rulleMap > ::iterator it;
	vector<string> rightHS = vector<string>();
	for(it=m_rulles.begin(); it != m_rulles.end(); ++it){
		rightHS = it->second.rightSide;
		if(rightHS[0].compare(nonterminal) == 0){
			replaceBy_nonterminal = it->second.keyNonTerminal; // find what nonterminal rule starts with corresponding prefix "for" "if" ...
			break;
		}
	}

	if(nonterminal == "then"){
		if(!m_parsStack.empty()) m_parsStack.pop();
		m_parsStack.push(";");
		m_parsStack.push("statBlock");
		m_parsStack.push("else");
		m_parsStack.push("statBlock");
		m_parsStack.push("then");
		m_stackTop = m_parsStack.top();
		m_extraThenIsAdded = true;
		replaceBy_nonterminal = "then";
		stringstream str;
		str<< "==> Rule#25( statment if) is added into a stack for synchronization purpose"<<endl;
		output(str.str());


		//	then statBlock else statBlock ;   // else  mark_ELSE POP_jump_marker_stack  statBlock ; mark_ENDIF POP_jump_marker_stack 

	}else if(nonterminal == "else"){
		if(!m_parsStack.empty()) m_parsStack.pop();
		m_parsStack.push("POP_jump_marker_stack");
		m_parsStack.push("mark_ENDIF");
		m_parsStack.push(";");
		m_parsStack.push("statBlock"); 
		m_parsStack.push("POP_jump_marker_stack");
		m_parsStack.push("mark_ELSE");
		m_parsStack.push("else");
		m_stackTop = m_parsStack.top();
		m_extraElseIsAdded = true;
		replaceBy_nonterminal ="else";
		stringstream str;
		str<< "==> Rule#25( statment if) is added into a stack for synchronization purpose"<<endl;
		output(str.str());

	}else 
		if(!rightHS.empty() && rightHS[0].compare(nonterminal) == 0){

			if(!m_parsStack.empty()) m_parsStack.pop(); // remove what we were parsing and replace with a new fined rule
			m_parsStack.push(replaceBy_nonterminal);
			m_stackTop = m_parsStack.top();
			stringstream str;
			str<<"==> Statment is added into a stack for synchronization purpose"<<endl;
			output(str.str());
		}
		return replaceBy_nonterminal;
}


bool syntaxAnalizer:: synchronizingMethod(Token* token){
	bool returnValue = false;
	if(m_stackTop.compare("prog") == 0 && token->m_lexemCode.compare("ID") == 0){
		map<int, rulleMap> ::iterator it;
		it = m_rulles.find(1); // finf rule number 1
		m_parsStack.pop();
		for (vector<string>::reverse_iterator rit = it->second.rightSide.rbegin(); rit!= it->second.rightSide.rend(); ++rit)
			m_parsStack.push(*rit);
		stringstream str;
		str<<"==>	Rule#1 is added into stack for sinchronization purpose"<<endl;
		output(str.str());

		returnValue =  true;

	}
	else if(m_stackTop.compare("prog") == 0 && token->m_lexem == "{"){ //{ D D2 varDeclFunctDef_list }  generate_classDecl_code D_ D_2 ; progBody put_end_program_marker validate_undefineds
		//{ varDeclFunctDef_list } ;
		m_parsStack.pop();
		m_parsStack.push("validate_undefineds");
		m_parsStack.push("put_end_program_marker"); 
		m_parsStack.push("progBody");
		m_parsStack.push("classDecl_list");
		m_parsStack.push(";");
		m_parsStack.push("D_2");
		m_parsStack.push("D_");
		m_parsStack.push("generate_classDecl_code");
		m_parsStack.push("}");
		m_parsStack.push("varDeclFunctDef_list");
		m_parsStack.push("D2");
		m_parsStack.push("D"); 
		m_parsStack.push("{");
		{
			stringstream str;
			str<< "SYNTAX ERROR (SER#10): Class declaration or program is expected' before '" << getType(token->m_lexem) <<"' on line# "<< token->m_location << endl;
			outputIntoFile(str.str());
		}
		stringstream str;
		str<<" ==>  Rule#2 partially is added into a stack for synchronization purpose" <<endl;
		output(str.str());

		returnValue =  true;
	}
	else if(m_stackTop.compare("classDecl_list") == 0 && token->m_lexemCode.compare("ID") == 0){

		map<int, rulleMap> ::iterator it;
		it = m_rulles.find(2);
		for (vector<string>::reverse_iterator rit = it->second.rightSide.rbegin(); rit!= it->second.rightSide.rend(); ++rit)
			m_parsStack.push(*rit);
		m_parsStack.pop(); // remove 'id'
		m_parsStack.pop();//remove 'class'
		stringstream str;
		str<<" ==>  Rule#2 partially is added into a stack for synchronization purpose" <<endl;
		output(str.str());

		{
			stringstream str;
			str<< "SYNTAX ERROR (SER#7): Missing keword 'class' before identifier '" << getType(token->m_lexem) <<"' "	 <<" on line# "<< token->m_location << endl;
			outputIntoFile(str.str());
		}

		returnValue =  true;

	}

	return returnValue;

}



bool syntaxAnalizer::synchronizingMethod_prog(Token* token){

	bool returnValue = false;

	EMPTY_SEMANTIC_STACKS();

	if(m_lastLexemInSyncBlok == m_currentToken->m_lexem && m_lastLexemLocationInSyncBlok == m_currentToken->m_location)
	{
		m_lastLexemInSyncBlok = "";
		m_lastLexemLocationInSyncBlok = 0;
		return returnValue;
	}

	m_lastLexemInSyncBlok = m_currentToken->m_lexem;
	m_lastLexemLocationInSyncBlok = m_currentToken->m_location;

	if(m_parsStack.top() == "prog"){
		//	throw SynchronizeException();

		if(m_programCount == 0){		// { varDeclFunctDef_list } ; classDecl_list progBody 
			m_parsStack.pop();
			m_parsStack.push("validate_undefineds");
			m_parsStack.push("put_end_program_marker"); 
			m_parsStack.push("progBody");
			m_parsStack.push("classDecl_list");
			m_parsStack.push(";");
			m_parsStack.push("D_2");
			m_parsStack.push("D_");
			m_parsStack.push("generate_classDecl_code");
			m_parsStack.push("}");
			m_parsStack.push("varDeclFunctDef_list");
			m_parsStack.push("D2");
			m_parsStack.push("D"); 
			m_parsStack.push("{");
			m_stackTop = m_parsStack.top();
			stringstream str;
			str<<"==> <{ varDeclFunctDef_list } ; classDecl_list progBody> is added into a stack for synchronization purpose"<<endl;
			output(str.str());

			returnValue = true;

		}else{
			//funcBody ; funcDef_list // funcBody ; jump_end_program_marker  funcDef_list
			m_parsStack.pop();
			m_parsStack.push("funcBody");
			m_parsStack.push(";");
			m_parsStack.push("jump_end_program_marker");
			m_parsStack.push("funcDef_list");
			m_stackTop = m_parsStack.top();

			stringstream str;
			str<< "==> <funcBody ; funcDef_list> is added into a stack for synchronization purpose"<<endl;
			output(str.str());

			returnValue = true;

		}


	}
	return returnValue;

}

void syntaxAnalizer::storeRegistries()
{
	/*
	asmcode<<"addi r14, r0, MEMORY_COPY_REGISTRY_STORE"<<endl;
	asmcode<<"sw 0(r14), r1"<<endl; //same thing MEMORY_COPY_REGISTRY_STORE(r0)
	asmcode<<"sw 4(r14), r2"<<endl;
	asmcode<<"sw 8(r14), r3"<<endl;
	asmcode<<"sw 12(r14), r4"<<endl;
	asmcode<<"sw 16(r14), r5"<<endl;
	asmcode<<"sw 20(r14), r6"<<endl;
	asmcode<<"sw 24(r14), r7"<<endl;
	*/

	string reg = "r14"; // we don't use r14 and r15 for regular operations
	asmcode<<"% store registries"<<endl;
	asmcode<<"lw "<<reg<<","<<"functionCallStack_ponter(r0)"<<endl;
	for(int i = 1; i <= 15; i++)
	{		
		string registryToSave = "r" + intToStr(i);
		if(registryToSave != reg)
		{			
			asmcode<<"sw "<<"functionCallStack"<<"(" <<reg  <<")"<<","<<registryToSave<<endl;
			asmcode<<"addi "<<reg<<","<<reg<<","<<"4"<<endl;
		}
	}
	asmcode<<"sw "<<"functionCallStack_ponter(r0)"<<","<<reg<<endl;
	asmcode<<"% end store registries"<<endl;
}

void syntaxAnalizer::restoreRegistries()
{
	string reg = "r14";
	asmcode<<"% store registries"<<endl;
	asmcode<<"lw "<<reg<<","<<"functionCallStack_ponter(r0)"<<endl;	
	for(int i = 15; i >= 1; i--)
	{		
		string registryToRestore = "r" + intToStr(i);
		if(registryToRestore != reg)
		{

			asmcode<<"subi "<<reg<<","<<reg<<","<<"4"<<endl;
			asmcode<<"lw "<<registryToRestore<<","<<"functionCallStack"<<"(" <<reg  <<")"<<endl;
		}
	}
	asmcode<<"sw "<<"functionCallStack_ponter(r0)"<<","<<reg<<endl;
	asmcode<<"% end store registries"<<endl;
}

void syntaxAnalizer::analizeSemanticAction(string action){ // creates a recorde for a <class>

	if(action == "B" && !m_acumulater.empty()){ //insert a new class into a globalTable
		insert_class_action_B();
		action = "";

	}else if(action == "B2" && !m_acumulater.empty()){ //insert a new class into a globalTable
		insert_class_action_B2();
		action = "";

	}else if(action == "C" && !m_acumulater.empty()){ // insert <program> => I assume it is of type <class>
		insert_program_action_c();
		action = "";

	}else if(action == "C2" && !m_acumulater.empty()){ // insert <program> => I assume it is of type <class>
		insert_program_action_c2();
		action = "";



	}else if(action == "D" &&  !m_currentSemanticStack.empty()){ //keep current scope => create a simbole table
		if(m_acumulater.empty()) return;
		m_acumulater.pop();
		if(m_currentSemanticStack.top()->isDeclaredProperly){ // if class or function is declared properly, create a scope
			m_scopeHeararchy.push(m_currentSemanticStack.top());
			m_currentSemanticStack.top()->creat_simbolTable();
		}else {
			m_scopeHeararchy.push(m_currentSemanticStack.top()); // is not declared properly
		}
		action = "";

	} else if(action == "D2" &&  !m_currentSemanticStack.empty()){
		SimpleVar* var;
		m_scopeHeararchy.push(m_currentSemanticStack.top());
		action = "";

	}else if(action == "D_2" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		if(m_scopeHeararchy.top()->obgect_type == "function"){
			FunctionVar * function = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
			if(function != NULL)
			{
				//function->printSymbolTable(cout);
				function->printSymbolTable(*m_symbolTableFile);
				declar<< function->END_PARAMETER_MARKER <<endl;
			}


			if(function->isDeclaredProperly)
				m_scopeHeararchy.top()->delete_(m_scopeHeararchy.top());
		}
		m_currentSemanticStack.pop();
		m_scopeHeararchy.pop(); 

		action = "";

	}else if(action == "D_" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()) { // remove current scope from stack
		FunctionVar* funVar = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		//	if(funVar != NULL)
		//funVar->END_PARAMETER_MARKER = m_scopeHeararchy.top()->alias + "_" + "END_PARAM_LIST";
		m_scopeHeararchy.pop();
		m_currentSemanticStack.pop();
		action = "";


	} else if ( !m_acumulater.empty() && (action == "V" || action == "V2" || action == "V_for" )){ // create a simple variable and insert into a current semantic stack <>
		Token* name = m_acumulater.top();
		m_acumulater.pop();
		if(m_acumulater.empty()) return;
		Token* type = m_acumulater.top();

		cretaeRecord_action_V(type, name);
		action = "";

	}else if(action == "IV_for" &&  !m_currentSemanticStack.empty()){
		insert_action_IV_FOR();
		action = "";
	}else if(action == "F" &&  !m_currentSemanticStack.empty()){ //insert a function into a current scope 
		insertFunction_action_F();
		action = "";

	}else if(action == "F2"  && !m_currentSemanticStack.empty()){ //insert a function into a current scope 
		insertFunction_action_F2();
		action = "";
	}else if(action == "FP" &&  !m_currentSemanticStack.empty()){
		insertFunctionParameter_FP();
		action = "";

	}else if(action == "FP2" && !m_currentSemanticStack.empty()){

		insertFunctionParameter_FP2();
		action = "";
	}else if(action == "DIM"  && !m_acumulater.empty() && !m_currentSemanticStack.empty()){
		insertNewDimention_action_DIM();
		action = "";

	}else if((action == "IV" || action == "IV_for") && !m_currentSemanticStack.empty()){
		insert_action_IV();
		action = "";

	}else if(action == "IV2"  && !m_currentSemanticStack.empty()){

		insert_action_IV2();
		action = "";

	}else if( action == "Validate"  && !m_currentSemanticStack.empty()){ //validates variable
		validateVariable();
		action = "";
	}else if(action == "Validate_DIM"  && !m_currentSemanticStack.empty() ){ // va*lidates dimentions
		SimpleVar * var_exp = m_currentSemanticStack.top() ;
		m_currentSemanticStack.pop();

		if(m_currentSemanticStack.empty()) return;
		if(m_currentSemanticStack.top() != NULL && m_currentSemanticStack.top()->obgect_type == "array_Variable" && m_currentSemanticStack.top()->type != "error_type"){

			if(!m_currentSemanticStack.top()->dimention_list->empty()){
				ArrayVar* array_ = dynamic_cast<ArrayVar*>(m_currentSemanticStack.top());
				if(array_ != NULL){
					array_->expressionType = array_->type;
					array_->runtime_exp_list.push_back(pair<int, SimpleVar *>(m_currentSemanticStack.top()->dimention_list->front(), var_exp));
					array_->element_index_list.push_back(m_currentSemanticStack.top()->dimention_list->front());
					m_currentSemanticStack.top()->dimention_list->pop_front();
				}
			}else {

				{
					ArrayVar* array_var = dynamic_cast<ArrayVar*>(m_currentSemanticStack.top());
					if(array_var != NULL){
						stringstream str;
						str<<endl<<"SEMERR#10:	Wrong number of indices on line# " << m_lastToken.m_location <<" :"<<array_var->name << "=> "<<array_var->numberOf_DIM <<" dimentions are required"<<endl;
						outputSemErr(str.str());

					}else {
						stringstream str;
						str<<endl<<"SEMERR#10:	Wrong number of indices on line# " << m_lastToken.m_location <<" :"<< m_currentSemanticStack.top()->name << endl;
						outputSemErr(str.str());
					}
				}
				m_currentSemanticStack.top()->type = "error_type";
			}
		} else {

			if(m_currentSemanticStack.top()->obgect_type != "array_Variable" && m_currentSemanticStack.top()->type != "error_type") {

				{
					stringstream str;
					str<< "SEMERR#15:	Not an Array on line# "<< m_lastToken.m_location <<" :<"<< m_currentSemanticStack.top()->name<<"> is not an array"<< endl;
					outputSemErr(str.str());
				}
				m_currentSemanticStack.top()->type = "error_type";
			}
		}
		action = "";

	}else if(action == "Validate_Nest"  && !m_currentSemanticStack.empty() && !m_acumulater.empty()){ // validates nested variables
		if(m_currentSemanticStack.top()->type != "int" && m_currentSemanticStack.top()->type != "float" && m_currentSemanticStack.top()->type!="error_type"){
			ClassVar* var = dynamic_cast<ClassVar*>(m_GlobalScop->search(m_currentSemanticStack.top()->type)); // get the appropriate object type in global scope
			if(var != NULL){ // type  of object is in variable <var> 

				SimpleVar* s_var;
				if((s_var = var->simbolTable.search(m_acumulater.top()->m_lexem)) != NULL){

					// if it is a function
					if(s_var->obgect_type == "function"){
						FunctionVar* convertVar = dynamic_cast<FunctionVar*>(s_var);
						if(convertVar != NULL ){
							convertVar->runtime_parent_object = m_currentSemanticStack.top()->alias;
							convertVar->runtime_parent_address = m_currentSemanticStack.top()->address;
							if(m_regStack.empty()) return;
							string from_pointer = m_regStack.top();
							m_regStack.pop();
							if(m_regStack.empty()) return;
							string into_pointer = m_regStack.top();
							m_regStack.pop();

							int into_addr = var->address; // +4 is removed
							asmcode<<"addi "<< from_pointer <<","<<"r0"<<","<< m_currentSemanticStack.top()->address <<endl;
							//asmcode<<"lw "<< into_pointer <<","<< var->address <<"(r0)"<<endl;

							asmcode<<"addi "<< into_pointer <<","<<"r0"<<","<< into_addr <<endl;
							int k = var->computeMemorySize(m_GlobalScop, getErrorCount());
							memoryCopy( m_currentSemanticStack.top()->alias, from_pointer, var->alias,into_pointer, k); // from, into, memory

							initialize_registerTo_0(from_pointer) ;
							initialize_registerTo_0(into_pointer) ;

							m_currentSemanticStack.pop();
							m_currentSemanticStack.push(s_var->clone());
						}

					}else{

						SimpleVar* parent_var = m_currentSemanticStack.top();
						m_currentSemanticStack.pop();
						m_currentSemanticStack.push(s_var->clone());


						//m_currentSemanticStack.top()->address = parent_var->address +  s_var->address;
						int adr_value = var->ComputeRuntimeObjectAddress(s_var->name);
						m_currentSemanticStack.top()->address =  parent_var->address + adr_value;//m_currentSemanticStack.top()->address  + parent_var->address ;
						m_currentSemanticStack.top()->alias = parent_var->alias;
						m_currentSemanticStack.top()->runtime_offset = parent_var->runtime_offset;
					}
				}else 	{

					SimpleVar* var_emplty = new SimpleVar(m_acumulater.top()->m_lexem, "error_type");
					var_emplty->objectLineNumber = m_acumulater.top()->m_location;
					m_currentSemanticStack.pop();
					m_currentSemanticStack.push(var_emplty);

					stringstream str;
					str<<"SEMERR#1:	Undeclared identifier on line# " <<m_acumulater.top()->m_location<< ": "<< var_emplty->name <<endl;;
					outputSemErr(str.str());


				}// starts from search in scope heararchy
			}else {

				SimpleVar* var_emplty = new SimpleVar(m_acumulater.top()->m_lexem, "error_type");
				var_emplty->objectLineNumber = m_acumulater.top()->m_location;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(var_emplty);
				{
					stringstream str;
					str<<"SEMERR#1:	Undeclared identifier on line# " <<m_lastToken.m_location << " : "<< var_emplty->name<<endl;
					outputSemErr(str.str());
				}


			}
		}else{ 
			if(m_currentSemanticStack.top()->type == "int" || m_currentSemanticStack.top()->type == "float")
			{
				{
					stringstream str;
					str<<endl<<"SEMERR#3:	Invalid use of variable on line#  "<< m_lastToken.m_location<<"	=>"<<m_currentSemanticStack.top()->name << " is of type "<< m_currentSemanticStack.top()->type<< " has no member "<<m_acumulater.top()->m_lexem<<endl;
					outputSemErr(str.str());
				}

			}
			//	else cout << "invalid parameter on line "<< m_lastToken.m_location<<"	"<<m_currentSemanticStack.top()->name<<endl;	
		}
		action = "";
	}else if(action == "Validate_Func" &&  !m_currentSemanticStack.empty()){
		if(m_currentSemanticStack.top()->obgect_type == "function" && m_currentSemanticStack.top()->type != "error_type"){
			FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top()->clone());
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(funcVar);
		}else{ 
			if(m_currentSemanticStack.top()->obgect_type != "function" && m_currentSemanticStack.top()->type != "error_type"){
				{
					stringstream str;
					str<<"SEMERR#2:	Invalid Function on line#	"<<m_lastToken.m_location<< "	Is not a  function:	"<<m_currentSemanticStack.top()->name<<endl<<endl;
					outputSemErr(str.str());
				}
				m_currentSemanticStack.top()->type = "error_type";
			}
		}
		action = "";

	} else if(action == "IS_Function" &&  !m_currentSemanticStack.empty()){
		if(m_currentSemanticStack.top()->obgect_type == "function" && m_currentSemanticStack.top()->type != "error_type"){
			FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top()->clone());
			if( !funcVar->functionParamsAreChecked ){
				stringstream str;
				str<<"SEMERR#18:	Invalid Function call on line#	"<<m_lastToken.m_location<< "	Is not an approptiate  function:	"<<m_currentSemanticStack.top()->name<<endl;
				outputSemErr(str.str());
				m_currentSemanticStack.top()->type = "error_type";
			}
		}

	} else if(action == "Validate_Param" &&  !m_currentSemanticStack.empty()){
		if(m_currentSemanticStack.top()->obgect_type == "function" && m_currentSemanticStack.top()->type != "error_type"){
			FunctionVar* funcVar = (FunctionVar*)m_currentSemanticStack.top()->clone();
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(funcVar);
			if(!funcVar->signature.empty() &&  funcVar != NULL){
				if(funcVar->signature.front()->type == ""){
					funcVar->signature.pop_front();
				}else
				{
					Expression* exp = new Expression();
					exp->name = "signature_" + funcVar->name;
					exp->type = funcVar->signature.front()->type;

					exp->expressionType = funcVar->signature.front()->expressionType;
					exp->runtime_exp_list = funcVar->signature.front()->runtime_exp_list;
					exp->runtime_offset = funcVar->signature.front()->runtime_offset;

					exp->objectLineNumber = funcVar->signature.front()->objectLineNumber;

					funcVar->signature.pop_front();
					m_currentSemanticStack.push(exp);
				}
			}else {
				{
					stringstream str;
					str<< endl<< "SEMERR#4:		Invalid parameter list on line# "<< m_lastToken.m_location <<": " + funcVar->name <<"	"<<funcVar->numberOfParameters <<" parameters are required"<< endl;
					outputSemErr(str.str());
				}

			}
		} 

		action = "";

	} if(action == "Validate_numberOf_parameters" &&  !m_currentSemanticStack.empty()){
		FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
		if( funcVar != NULL){
			funcVar->functionParamsAreChecked = true;
			if(!funcVar->signature.empty()){
				{
					stringstream str;
					str<< "SEMERR#5:	Invalid parameter list on line# "<< m_lastToken.m_location <<": " + funcVar->name <<" =>Invalid number of parameters =>"<< funcVar->numberOfParameters<<" parameters are required"<<endl;
					outputSemErr(str.str());
				}

				funcVar->type = "error_type";
			}
			action = "";
		}

	}else if(action == "insert_factor_" && !m_acumulater.empty()){ // check type later !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		TokenNumeric* token = dynamic_cast<TokenNumeric*>(m_acumulater.top());
		if(token != NULL){
			Factor_* factor = new Factor_();
			//factor->name = "userInput" + token->m_lexem;
			factor->objectLineNumber = token->m_location;
			if(token->numericType == "intValue"){

				token->intValue = atoi(token->m_lexem.c_str());
				factor->int_numericValue = token->intValue;
				factor->type = "int";
				factor->expressionType = "int";
				//--------------
				string str = "temp";
				str = str + intToStr(m_temp_alias_index);
				m_temp_alias_index++; //////////////////

				if(m_regStack.empty()) return;
				string reg = m_regStack.top();
				m_regStack.pop();
				factor->name = str; // keep the name of the alias in an object
				factor->alias = str;
				factor->address = 0; // for integer variables only => for float need to be computed @@@@@@@@@@@@@@@
				declar<< factor->alias<<"  "<<"dw 0"<<endl; // declar a temporary variable => alisas
				NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
				asmcode<< "addi "<<reg<<", r0,"<<token->intValue<<endl; // keep user input value into a free register
				asmcode<< "sw "<< factor->alias<<"(r0),"<<reg<<endl;
				asmcode<< "sub "<<reg<<","<<reg<<","<<reg<<endl; // initialize to <0> the content of register <reg>
				m_regStack.push(reg); // push <reg> back since it is no longer needed
				//m_regStack.push(reg);
				//-------------


			}
			else if(token->numericType == "floatValue"){

				token->floatValue = atof(token->m_lexem.c_str()) * 2048;
				factor->float_numericValue = token->floatValue;
				factor->type = "float";
				factor->expressionType ="float";


				string str = "temp";
				str = str + intToStr(m_temp_alias_index);
				m_temp_alias_index++; //////////////////

				if(m_regStack.empty()) return;
				string reg = m_regStack.top();
				m_regStack.pop();
				factor->name = str; // keep the name of the alias in an object
				factor->alias = str;
				factor->address = 0; // for integer variables only => for float need to be computed @@@@@@@@@@@@@@@
				declar<< factor->alias<<"  "<<"dw 0"<<endl; // declar a temporary variable => alisas
				NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
				asmcode<< "addi "<<reg<<", r0,"<<token->floatValue<<endl; // keep user input value into a free register
				asmcode<< "sw "<< factor->alias<<"(r0),"<<reg<<endl;
				asmcode<< "sub "<<reg<<","<<reg<<","<<reg<<endl; // initialize to <0> the content of register <reg>
				m_regStack.push(reg); // push <reg> back since it is no longer needed
			}
			//	factor->type =  token->numericType;

			m_acumulater.pop();
			m_currentSemanticStack.push(factor);
			action = "";
		}
		else
			cout <<"ERRROR111111111111"<<endl;
	} else if(action =="insert_factor_var" && !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		if(m_currentSemanticStack.top()->obgect_type == "array_Variable"){
			if(m_currentSemanticStack.top()->expressionType ==m_currentSemanticStack.top()->type){

				string new_arrayEl = generate_Alias() + "_" +m_currentSemanticStack.top()->name;

				FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
				if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(new_arrayEl, m_currentSemanticStack.top()->computeMemorySize(m_GlobalScop, getErrorCount())));

				SimpleVar* new_simpleVar = new SimpleVar(new_arrayEl ,m_currentSemanticStack.top()->type );
				declar<<new_arrayEl<<" dw 0"<<endl;
				NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
				new_simpleVar->alias = new_arrayEl;
				new_simpleVar->expressionType = m_currentSemanticStack.top()->type;


				if(m_regStack.empty()) return;
				string from_pointer = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string into_pointer = m_regStack.top();
				m_regStack.pop();
				if(dynamic_cast<ArrayVar*>( m_currentSemanticStack.top()) != NULL)
					asmcode<<"lw "<< from_pointer <<","<< m_currentSemanticStack.top()->runtime_offset <<"(r0)"<<endl;
				asmcode<<"addi "<<from_pointer<<","<<from_pointer<<","<< m_currentSemanticStack.top()->address<<endl;

				asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl; // push a starting address of an array element into a stack

				memoryCopy( m_currentSemanticStack.top()->alias, from_pointer, new_simpleVar->alias,into_pointer, new_simpleVar->computeMemorySize(m_GlobalScop, getErrorCount())); // from, into, memory
				new_simpleVar->address = 0; // New added
				initialize_registerTo_0(from_pointer) ;
				initialize_registerTo_0(into_pointer) ;



				//new_simpleVar->runtime_exp_list = m_currentSemanticStack.top()->runtime_exp_list;
				//new_simpleVar->runtime_offset =  0;
				//copy array element with an appropriate offset into an new created variable
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(new_simpleVar); 		


			}else{

				// how to access the array, if array is passed as a function parameter!!!!!!!!!!!!!!!!!
			} 
		}else {

			Factor_* factor = new Factor_();
			factor->name = m_currentSemanticStack.top()->name ;

			factor->type = m_currentSemanticStack.top()->type;
			factor->alias = m_currentSemanticStack.top()->alias;
			factor->address = m_currentSemanticStack.top()->address;
			factor->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
			factor->expressionType = m_currentSemanticStack.top()->expressionType;
			factor->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(factor);
		}
		action = "";

	}else if(action == "ass_term_I" && !m_currentSemanticStack.empty()){
		Term_* term_ = new Term_();
		term_->name =  m_currentSemanticStack.top()->name;
		term_->alias =  m_currentSemanticStack.top()->alias;
		term_->address =  m_currentSemanticStack.top()->address;

		term_->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		term_->synthesised = false;
		term_->type = m_currentSemanticStack.top()->type;
		term_->int_numericValue = m_currentSemanticStack.top()->int_numericValue;
		term_->float_numericValue = m_currentSemanticStack.top()->float_numericValue;
		term_->bool_value = m_currentSemanticStack.top()->bool_value;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term_);
		action = "";
	} else if(action == "ass_term.S"  && !m_currentSemanticStack.empty()){

		Term* term = new Term();
		term->type = m_currentSemanticStack.top()->type;
		term->name = m_currentSemanticStack.top()->name;
		term->alias =  m_currentSemanticStack.top()->alias;
		term->address =  m_currentSemanticStack.top()->address;

		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
		action = "";
	}else if(action == "ass_term_2I" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		Term_* term = new Term_();
		SimpleVar* comp1 = m_currentSemanticStack.top();
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty())
			return;
		SimpleVar* comp2 = m_currentSemanticStack.top();
		if(comp1->type == comp2->type ){
			if(comp1->expressionType == "array" || comp2->expressionType == "array"){
				term->expressionType == "error_type";
				stringstream str;
				str<< "SEMERR#20:	Invalid arithmetic opperation on line#	"<< m_lastToken.m_location << ":	Arithmetic operations are not defined on arrays"<<endl;
				outputSemErr(str.str());

			}else{
				Operation* operation = dynamic_cast<Operation*>(comp2);
				if(operation != NULL){
					string op_ = operation->operator_; // check if it is <+> or <-> later

					if(m_regStack.empty()) return;
					string reg1 = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string reg2 = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string reg3 =  m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string reg4 =  m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string offset_reg = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string result = m_regStack.top();
					m_regStack.pop();

					asmcode<<comp1->cout_AddressCode(comp1->address , offset_reg); // => take right side offset
					asmcode<<"lw "<<reg3<<","<<comp1->alias<<"("<<offset_reg <<")"<<endl; // load right side operand

					asmcode<<operation->operand->cout_AddressCode(operation->operand->address, offset_reg); // the same as //output<<"lw "<<reg<<","<<runtime_offset<<"(r0)"<<endl;

					asmcode<<"lw "<<reg4<<","<<operation->operand->alias<<"("<< offset_reg <<")"<<endl;



					//		asmcode<<"addi "<<offset_reg<<","<<"r0,"<<operation->operand->returnOffset() <<endl;
					//			asmcode<<"lw "<<reg1<<","<<operation->operand->alias<<"("<<offset_reg<<")"<<endl;

					//		asmcode<<"addi "<<offset_reg<<","<<"r0,"<<comp1->returnOffset()<<endl ;
					//			asmcode<<"lw "<<reg2<<","<<comp1->alias<<"("<<offset_reg<<")"<<endl;

					asmcode<< muntiplication_(op_)<<result<<","<<reg4<<","<<reg3<<endl;


					string newAlias = generate_Alias(); // create a new alias
					FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
					if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(newAlias,4));

					declar<<newAlias<<"  dw 0"<<endl; //declar new variable
					NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
					asmcode<<"sw "<< newAlias<<"(r0),"<<result<<endl;

					initialize_registerTo_0(reg1); //initialize to 0, push into the stack back
					initialize_registerTo_0(reg2); //initialize to 0, push into the stack back
					initialize_registerTo_0(reg3); //initialize to 0, push into the stack bac
					initialize_registerTo_0(reg4);
					initialize_registerTo_0(result);
					initialize_registerTo_0(offset_reg);

					term->name = newAlias;
					term->type = comp1->type;

					term->alias = term->name;
					term->address = 0;
					term->expressionType = comp1->expressionType;

				}
				term->type = comp1->type;
			}
		}
		else{ 
			if(comp1->type != "error_type" && comp2->type != "error_type"){
				{
					stringstream str;
					str<< "SEMERR#6:	Type mismatch on line#	"<< m_lastToken.m_location << ":	parameters of the same type are rquired"<<endl;
					outputSemErr(str.str());
					term->name = comp1->name + " + " + comp2->name;
				}

			}
			term->type = "error_type";
		}
		term->objectLineNumber = comp1->objectLineNumber;
		if(m_currentSemanticStack.empty()) return;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);

		action = "";
	} else if(action == "ass_term_1S" && !m_currentSemanticStack.empty()){
		Term_* term = new Term_();
		term->type = m_currentSemanticStack.top()->type;
		term->name = m_currentSemanticStack.top()->name;
		term->alias = m_currentSemanticStack.top()->alias;
		term->address = m_currentSemanticStack.top()->address;
		term->expressionType =  m_currentSemanticStack.top()->expressionType;

		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
	}else if(action == "ass_term_S" && !m_currentSemanticStack.empty()){
		Term_* term = new Term_();
		term->type = m_currentSemanticStack.top()->type;
		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		//term->name = "term_.S = term_.I";
		term->name = m_currentSemanticStack.top()->name;
		term->alias = m_currentSemanticStack.top()->alias;
		term->address = m_currentSemanticStack.top()->address;
		term->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
		term->expressionType =  m_currentSemanticStack.top()->expressionType;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
	}else  	if(action == "ass_arithExp_I" && !m_currentSemanticStack.empty()){
		ArithExpr_* term_ = new ArithExpr_();
		term_->type = m_currentSemanticStack.top()->type;
		term_->name = m_currentSemanticStack.top()->name;
		term_->alias = m_currentSemanticStack.top()->alias;
		term_->address = m_currentSemanticStack.top()->address;
		term_->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
		term_->expressionType =  m_currentSemanticStack.top()->expressionType;
		term_->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term_);
		action = "";
	} else if(action == "ass_arithExp.S"  && !m_currentSemanticStack.empty()){

		ArithExpr* term = new ArithExpr();
		term->type = m_currentSemanticStack.top()->type;

		term->name =  m_currentSemanticStack.top()->name;
		term->alias =  m_currentSemanticStack.top()->alias;
		term->address =  m_currentSemanticStack.top()->address;
		term->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
		term->expressionType =  m_currentSemanticStack.top()->expressionType;
		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
		action = "";
	}else if(action == "ass_arithExp_2I" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		ArithExpr_* term = new ArithExpr_();
		SimpleVar* comp1 = m_currentSemanticStack.top(); //second component => right hand side

		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty())
			return;
		SimpleVar* comp2 = m_currentSemanticStack.top(); // first component contains also opperation

		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;

		if(comp1->type != comp2->type){ 
			if(comp1->type != "error_type" && comp2->type != "error_type"){
				{
					stringstream str;
					str<< "SEMERR#6:	Type mismatch on line#	"<< m_lastToken.m_location << ":	parameters of the same type are rquired"<<endl;
					outputSemErr(str.str());
				}

			}
			term->type = "error_type";
		}
		else{
			if(comp1->expressionType == "array" ||  comp2->expressionType == "array"){
				stringstream str;
				str<< "SEMERR#20:	Invalid  opperation on line#	"<< m_lastToken.m_location <<":	Arithmetic operations are not defined on arrays"<<endl;
				outputSemErr(str.str());
				term->expressionType = "error_type";

			}else {

				Operation* operation = dynamic_cast<Operation*>(comp2); // the one that contains operand =?left hand side
				if(operation != NULL){
					string op_ = operation->operator_; 
					if(m_regStack.empty()) return;
					string regOffset_rs = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string regOffset_ls = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;
					string reg3 =  m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string reg4 =  m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string result = m_regStack.top();
					m_regStack.pop();

					//		asmcode<<m_currentSemanticStack.top()->cout_AddressCode(regOffset_rs);

					asmcode<<comp1->cout_AddressCode(comp1->address, regOffset_rs); // => take right side offset
					asmcode<<"lw "<<reg3<<","<<comp1->alias<<"("<<regOffset_rs <<")"<<endl; // load right side operand

					asmcode<<operation->operand->cout_AddressCode(operation->operand->address, regOffset_ls); // the same as //output<<"lw "<<reg<<","<<runtime_offset<<"(r0)"<<endl;

					asmcode<<"lw "<<reg4<<","<<operation->operand->alias<<"("<< regOffset_ls <<")"<<endl;


					asmcode<< addition_(op_)<<result<<","<<reg4<<","<<reg3<<endl;

					string newAlias = generate_Alias();
					FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
					if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(newAlias, 4));

					declar<<newAlias<<"  dw 0"<<endl; //declar new variable
					NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
					asmcode<<"sw "<< newAlias<<"(r0),"<<result<<endl;


					term->name = newAlias;
					term->type = comp1->type;

					term->alias = newAlias;
					term->address = 0;
					term->expressionType = comp1->expressionType;


					initialize_registerTo_0(result);
					initialize_registerTo_0(reg4);
					initialize_registerTo_0(reg3);
					initialize_registerTo_0(regOffset_ls);
					initialize_registerTo_0(regOffset_rs);
				}

			}
		}
		if(m_currentSemanticStack.empty()) return;

		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);

		action = "";
	} else if(action == "ass_arithExp_1S" && !m_currentSemanticStack.empty()){
		ArithExpr_* term = new ArithExpr_();
		term->type = m_currentSemanticStack.top()->type;
		term->name = m_currentSemanticStack.top()->name;
		term->alias = m_currentSemanticStack.top()->alias;
		term->address = m_currentSemanticStack.top()->address;
		term->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
		term->expressionType =  m_currentSemanticStack.top()->expressionType;

		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
		action = "";
	}else if(action == "ass_arithExp_S" && !m_currentSemanticStack.empty()){

		ArithExpr_* term = new ArithExpr_();
		term->type = m_currentSemanticStack.top()->type;
		term->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
		term->name =  m_currentSemanticStack.top()->name;
		term->expressionType =  m_currentSemanticStack.top()->expressionType;
		term->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
		action = "";

	} else if(action == "validateType" &&  !m_currentSemanticStack.empty()){

		if(m_currentSemanticStack.top()->obgect_type == "array_Variable"){
			if(m_currentSemanticStack.top()->expressionType ==m_currentSemanticStack.top()->type){
				ArrayElement* new_simpleVar = new ArrayElement();
				new_simpleVar->name = m_currentSemanticStack.top()->name;
				new_simpleVar->type = m_currentSemanticStack.top()->type;

				new_simpleVar->alias = m_currentSemanticStack.top()->alias;
				new_simpleVar->runtime_exp_list = m_currentSemanticStack.top()->runtime_exp_list;
				new_simpleVar->expressionType = m_currentSemanticStack.top()->expressionType;
				new_simpleVar->address = m_currentSemanticStack.top()->address;
				new_simpleVar->runtime_offset =  m_currentSemanticStack.top()->runtime_offset;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(new_simpleVar);
			}else{
				stringstream str;
				str<< "SEMERR#19:	Invalid operation on line# "<< m_currentToken->m_location<<endl<< " => Assignment operation is not defined for arrays"<<endl;
				outputSemErr(str.str());
				Expression* exp = new Expression();
				exp->type = m_currentSemanticStack.top()->type = "error_type";
				exp->name = m_currentSemanticStack.top()->name;
				exp->alias = m_currentSemanticStack.top()->alias;
				exp->address = m_currentSemanticStack.top()->address;
				exp->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
				//	exp->expressionType = m_currentSemanticStack.top()->expressionType;
				exp->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(exp);

			}
		}else if(m_currentSemanticStack.top()->type != "int" && m_currentSemanticStack.top()->type != "float"){
			stringstream str;
			str<< "SEMERR#19:	Invalid operation on line#  "<< m_currentToken->m_location<<" => Assignment operation is defined only for <int> and <float>"<<endl;
			outputSemErr(str.str());
			Expression* exp = new Expression();
			exp->type = m_currentSemanticStack.top()->type = "error_type";
			exp->name = m_currentSemanticStack.top()->name;
			exp->alias = m_currentSemanticStack.top()->alias;
			exp->address = m_currentSemanticStack.top()->address;
			exp->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
			//	exp->expressionType = m_currentSemanticStack.top()->expressionType;
			exp->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(exp);

		}else{
			Expression* exp = new Expression();
			exp->type = m_currentSemanticStack.top()->type;
			exp->name = m_currentSemanticStack.top()->name;
			exp->alias = m_currentSemanticStack.top()->alias;
			exp->address = m_currentSemanticStack.top()->address;
			exp->runtime_offset = m_currentSemanticStack.top()->runtime_offset;
			//	exp->expressionType = m_currentSemanticStack.top()->expressionType;
			exp->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(exp);
		}
		action = "";
	}
	else if(action == "validate_relType" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		//	ArithExpr* exp = new ArithExpr();
		SimpleVar* exp1;
		SimpleVar* exp2;
		exp1 = m_currentSemanticStack.top();

		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;

		exp2 = m_currentSemanticStack.top();
		if(exp1->type == exp2->type){
			if(exp1->type != "int" && exp1->type != "float" && m_scopeHeararchy.top()->isDeclaredProperly) { // relational operators can be used only with <int> or <float> 

				stringstream str;
				str<< "SEMERR#14:	Invalid relation on line# "<< m_currentToken->m_location<<"relational operators can be used only with <int> or <float>"<<endl;
				outputSemErr(str.str());


				m_currentSemanticStack.top()->type = "error_type"; 
			}else{
				Operation* operation = dynamic_cast<Operation*>(exp2);
				if(operation != NULL){ //a<b =>> operand == a, expr1 == b
					string op_ = operation->operator_;

					if(m_regStack.empty()) return;
					string reg1 = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string reg2 = m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string reg3 =  m_regStack.top();
					m_regStack.pop();
					if(m_regStack.empty()) return;

					string offset_reg = m_regStack.top();
					m_regStack.pop();

					asmcode<<"addi "<<offset_reg<<","<<"r0,"<< operation->operand->returnOffset()<<endl ;
					asmcode<<"lw "<<reg1<<","<<operation->operand->alias<<"(" << offset_reg <<")"<<endl; // a

					asmcode<<"addi "<<offset_reg<<","<<"r0,"<< exp1->returnOffset()<<endl;
					asmcode<<"lw "<<reg2<<","<<exp1->alias<<"("<<offset_reg<<")"<<endl; //b
					// initialize_registerTo_0(offset_reg);

					asmcode<< relation_(op_)<<reg3<<","<<reg1<<","<<reg2<<endl;  // a < b => operator < exp1 => ..
					// the result is in register 3
					if(!jump_marker_stack.empty()) 
					{
						asmcode<<"bz "<<reg3<<","<<jump_marker_stack.top()<<endl;   //if comparision is not true =>  jump to else statement
					}

					initialize_registerTo_0(reg1);
					initialize_registerTo_0(reg2);
					initialize_registerTo_0(reg3);
					initialize_registerTo_0(offset_reg);

				}
				m_currentSemanticStack.top()->type = "bool";
			}
		}else {
			if(exp1->type != "error_type" && exp2->type != "error_type" && m_scopeHeararchy.top()->isDeclaredProperly){
				{
					stringstream str;
					str<< "SEMERR#6:	Type mismatch on line# "<< m_currentToken->m_location<<". Parameters of the same type are expected	"<<endl<<endl;
					outputSemErr(str.str());
				}

				m_currentSemanticStack.top()->type = "error_type"; 
			}
		}
		action = "";
	}else if(action == "copy_Runtime_parameter_liast" &&  !m_currentSemanticStack.empty()){
		FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
		if(funcVar != NULL){

			/*
			if(m_regStack.empty()) return;
			string from_pointer = m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;
			string into_pointer = m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;
			string memory_size_begin = m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;
			string memory_size_end = m_regStack.top();
			m_regStack.pop();


			// r1,r2,r3,r4,r5

			asmcode<<"addi "<< memory_size_end<<","<<"r0" <<","<<funcVar->END_PARAMETER_MARKER<<endl; // get parameter start address
			asmcode<<"addi "<< memory_size_begin<< ","<<"r0" <<","<<funcVar->alias<<endl; // get parameter end address
			asmcode<<"sub "<<memory_size_end <<","<<memory_size_end<<","<<memory_size_begin<<endl;

			asmcode<<"lw "<<into_pointer<<","<<functionCallStack_ponter_recursion<<"(r0)"<<endl;
			asmcode<<"addi "<<from_pointer<<","<<"r0"<<","<<"0"<<endl;


			memoryCopy_byRegister(funcVar->alias, from_pointer, functionCallStack_recursion ,into_pointer, memory_size_end); // from, into, memory

			asmcode<<"add "<<into_pointer<<","<<memory_size_end<<","<<into_pointer<<endl;
			asmcode<<"sw "<<functionCallStack_ponter_recursion<<"(r0)"<<","<< into_pointer<<endl;

			initialize_registerTo_0(from_pointer) ;
			initialize_registerTo_0(into_pointer) ;
			initialize_registerTo_0(memory_size_begin) ;
			initialize_registerTo_0(memory_size_end) ;

			*/

			asmcode<<"addi r14, r0, MEMORY_COPY_REGISTRY_STORE"<<endl;
			asmcode<<"sw 0(r14), r1"<<endl; //same thing MEMORY_COPY_REGISTRY_STORE(r0)
			asmcode<<"sw 4(r14), r2"<<endl;
			asmcode<<"sw 8(r14), r3"<<endl;
			asmcode<<"sw 12(r14), r4"<<endl;
			asmcode<<"sw 16(r14), r5"<<endl;
			asmcode<<"sw 20(r14), r6"<<endl;
			asmcode<<"sw 24(r14), r7"<<endl;
			// r1,r2,r3,r4,r5

			//r1 - from_alias
			//r2 - from_pointer_reg
			//r3 - into_alias
			//r4 - into_pointer_reg
			//r5 - memory_reg
			//r6 - exchange


			asmcode<<"addi r1, r0, "<< funcVar->alias<< endl;
			asmcode<<"addi r2, r0, 0"<<endl;
			asmcode<<"addi r3, r0, "<<functionCallStack_recursion<<endl;
			asmcode<<"lw r4, "<<functionCallStack_ponter_recursion<<"(r0)"<<endl;
			asmcode<<"addi r5, r0, "<<funcVar->END_PARAMETER_MARKER<<endl; // get parameter start address
			asmcode<<"subi r5, r5, "<<funcVar->alias<<endl; // get parameter end address
			asmcode<<"addi r7, r5, 0"<<endl;

			asmcode<<"lw r14, functionCallStack_ponter(r0)"<<endl;
			asmcode<<"sw functionCallStack(r14), r15"<<endl;

			//copy_Runtime_parameter_liast
			asmcode<<"jl r15 , MEMORY_COPY"<<endl;

			asmcode<<"lw r14, functionCallStack_ponter(r0)"<<endl;
			asmcode<<"lw r15, functionCallStack(r14)"<<endl;

			//memoryCopy_byRegister(funcVar->alias, from_pointer, functionCallStack_recursion ,into_pointer, memory_size_end); // from, into, memory

			asmcode<<"add r4, r4, r7"<<endl;
			asmcode<<"sw "<<functionCallStack_ponter_recursion<<"(r0)"<<","<<"r4"<<endl;

			asmcode<<"addi r14, r0, MEMORY_COPY_REGISTRY_STORE"<<endl;
			asmcode<<"lw r1, 0(r14)"<<endl;
			asmcode<<"lw r2, 4(r14)"<<endl;
			asmcode<<"lw r3, 8(r14)"<<endl;
			asmcode<<"lw r4, 12(r14)"<<endl;
			asmcode<<"lw r5, 16(r14)"<<endl;
			asmcode<<"lw r6, 20(r14)"<<endl;
			asmcode<<"lw r7, 24(r14)"<<endl;
		}

	} else if(action == "Validate_assign_type" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		SimpleVar* var = m_currentSemanticStack.top(); // <var> contains the final espression resalt
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;

		if(m_currentSemanticStack.top()->expressionType == "array" || var->expressionType == "array"){
			stringstream str;
			str<< "SEMERR#20:	Invalid  opperation on line#	"<<m_lastToken.m_location << ":	Assignment  operations are not defined on arrays"<<endl;
			outputSemErr(str.str());


		}else{
			if(var->type != m_currentSemanticStack.top()->type && m_scopeHeararchy.top()->isDeclaredProperly){
				if(m_currentSemanticStack.top()->type != "error_type" && var->type != "error_type" && m_scopeHeararchy.top()->isDeclaredProperly) {
					{
						stringstream str;
						str<<endl<<"SEMERR#7:	Assignment Type mismatch on line# " <<m_lastToken.m_location << " : "<<m_currentSemanticStack.top()->type <<" is required" << endl;
						outputSemErr(str.str());
					}

				}
			}
		}
		//	m_currentSemanticStack.pop(); //@ comment is added
		m_currentSemanticStack.push(var); // @ is added
		action = "";

	}else if(action ==  "Validate_dimention_type" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){

		SimpleVar* var = m_currentSemanticStack.top(); // <var> contains the final espression resalt
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;

		if(var->type != m_currentSemanticStack.top()->type && m_scopeHeararchy.top()->isDeclaredProperly){
			if(m_currentSemanticStack.top()->type != "error_type" && var->type != "error_type" && m_scopeHeararchy.top()->isDeclaredProperly) {
				{
					stringstream str;
					str<<endl<<"SEMERR#7:	Assignment Type mismatch on line# " <<m_lastToken.m_location << " : "<<m_currentSemanticStack.top()->type <<" is required" << endl;
					outputSemErr(str.str());
				}

			}
		} 
		m_currentSemanticStack.pop(); 
		m_currentSemanticStack.push(var); // push bach the expression result
		//m_currentSemanticStack.top()->runtime_exp_list.push_back(var);
		action = "";

	}else if(action == "Validate_IF_type" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){

		SimpleVar* var = m_currentSemanticStack.top();
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;

		if(var->type != m_currentSemanticStack.top()->type && m_scopeHeararchy.top()->isDeclaredProperly){
			if(m_currentSemanticStack.top()->type != "error_type" && var->type != "error_type" && m_scopeHeararchy.top()->isDeclaredProperly) {
				{
					stringstream str;
					str<<endl<<"SEMERR#16:	Invalid Relation on line# " <<m_lastToken.m_location << " : relational operator or variables of the same type are required"<< endl;
					outputSemErr(str.str());
				}

			}
			//else if( var->type == "error_type" && m_currentSemanticStack.top()->type != "error_type"){
			//	asmcode<<"Semantic Error => type missmatch on line# " <<m_lastToken.m_location << " : parameter of the same type are required"<<endl;
			//}
		}
		if(!m_currentSemanticStack.empty()) 
			m_currentSemanticStack.pop();
		action = "";



	}else if(action ==  "validate_complex_type" &&  !m_currentSemanticStack.empty() ){
		SimpleVar* var = m_currentSemanticStack.top();
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;

		if(var->type != m_currentSemanticStack.top()->type)
			m_currentSemanticStack.top()->type = "error_type";

		action = "";
	} else if(action == "insert_expression" &&  !m_currentSemanticStack.empty()){
		Expression* exp = new Expression();
		exp->type = m_currentSemanticStack.top()->type;
		exp->name = "nestedExpression";
		exp->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		m_currentSemanticStack.push(exp);
		action = "";
	}else if(action == "insert_expression_int" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		Expression* exp = new Expression();
		exp->type = "int";
		exp->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
		string str ;
		str = generate_Alias();
		FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(str, 4));

		declar<<str<<"  dw 0"<<endl;
		NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
		exp->name = str; // keep the name of the alias in an object
		exp->alias = exp->name;
		m_currentSemanticStack.push(exp);
		action = "";
	}
	else if(action == "insert_return_type" && !m_scopeHeararchy.empty()){
		Expression* exp = new Expression();
		exp->type = m_scopeHeararchy.top()->type;
		exp->name = "Return_Expression";
		if(m_scopeHeararchy.top()->type != "int" && m_scopeHeararchy.top()->type != "float"){
			if(m_scopeHeararchy.top()->type != "error_type")	{
				stringstream str;
				str<< "SEMERR#8:	Invalid return type on line#  "<< m_currentToken->m_location<< " for "<<m_scopeHeararchy.top()->name <<" function can return only <int> or <float>"<<endl;
				outputSemErr(str.str());
				exp->type = "error_type";
			}

		}

		m_currentSemanticStack.push(exp); 
	}else if( action == "insert_bool_type" ){
		Expression* exp = new Expression();
		exp->type = "bool";
		exp->name = "Bool_Expression";
		m_currentSemanticStack.push(exp);
		action = "";


		action = "";
	} else if(action == "Validate_return_type" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		SimpleVar* var = m_currentSemanticStack.top(); //probably contains expression resukt value
		m_currentSemanticStack.pop();
		if(m_currentSemanticStack.empty()) 
			return;
		if(var->type != m_currentSemanticStack.top()->type && m_scopeHeararchy.top()->isDeclaredProperly){
			if(m_currentSemanticStack.top()->type != "error_type" && var->type != "error_type"){

				stringstream str;
				str<<endl<<"SEMERR#8:	Invalid return type for function  <"<<m_scopeHeararchy.top()->name<<">  on line#  " <<m_lastToken.m_location <<"	is expected <"<< m_scopeHeararchy.top()->type<<">"<<endl<<endl;
				outputSemErr(str.str());


			}
		}else if(var->type == m_currentSemanticStack.top()->type && !m_scopeHeararchy.empty() && m_scopeHeararchy.top()->isDeclaredProperly){  // generate code 
			FunctionVar* func = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
			if(func != NULL){

				//------ assign return type ---------
				if(m_regStack.empty()) return;
				string reg = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string reg_startingAddress = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;

				reg = m_regStack.top();
				m_regStack.pop();

				asmcode<<"addi "<< reg_startingAddress<<","<<"r0"<<","<<var->address<<endl;
				asmcode<<"lw "<<reg<<","<<var->alias<<"("<<reg_startingAddress<<")"<<endl;
				//-----------------------------------------------------------------------------------------------------

				//---------------------------  restore runtime parameter list-----------
				/*
				if(m_regStack.empty()) return;
				string from_pointer = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string into_pointer = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string memory_size_begin = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string memory_size_end = m_regStack.top();
				m_regStack.pop();

				asmcode<<"addi "<< memory_size_end<<","<<"r0" <<","<<func->END_PARAMETER_MARKER<<endl; // get parameter start address
				asmcode<<"addi "<< memory_size_begin<< ","<<"r0" <<","<<func->alias<<endl; // get parameter end address
				asmcode<<"sub "<<memory_size_end <<","<<memory_size_end<<","<<memory_size_begin<<endl;

				asmcode<<"lw "<<from_pointer<<","<<functionCallStack_ponter_recursion<<"(r0)"<<endl;
				asmcode<<"sub "<<from_pointer<<","<<from_pointer<<","<< memory_size_end<<endl ; // move to the begining of copying block
				asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl;

				memoryCopy_byRegister( functionCallStack_recursion ,from_pointer, func->alias, into_pointer, memory_size_end);

				asmcode<<"add "<<into_pointer<<","<<memory_size_end<<","<<into_pointer<<endl;
				asmcode<<"sw "<<functionCallStack_ponter_recursion<<"(r0)"<<","<< into_pointer<<endl;

				initialize_registerTo_0(from_pointer) ;
				initialize_registerTo_0(into_pointer) ;
				initialize_registerTo_0(memory_size_begin) ;
				initialize_registerTo_0(memory_size_end) ;
				*/

				asmcode<<"addi r14, r0, MEMORY_COPY_REGISTRY_STORE"<<endl;
				asmcode<<"sw 0(r14), r1"<<endl; //same thing MEMORY_COPY_REGISTRY_STORE(r0)
				asmcode<<"sw 4(r14), r2"<<endl;
				asmcode<<"sw 8(r14), r3"<<endl;
				asmcode<<"sw 12(r14), r4"<<endl;
				asmcode<<"sw 16(r14), r5"<<endl;
				asmcode<<"sw 20(r14), r6"<<endl;
				asmcode<<"sw 24(r14), r7"<<endl;
				// r1,r2,r3,r4,r5

				//r1 - from_alias
				//r2 - from_pointer_reg
				//r3 - into_alias
				//r4 - into_pointer_reg
				//r5 - memory_reg
				//r6 - exchange


				asmcode<<"addi r1, r0, "<< functionCallStack_recursion<< endl;
				asmcode<<"lw r2, "<<functionCallStack_ponter_recursion<<"(r0)"<<endl;
				asmcode<<"addi r3, r0, "<<func->alias<<endl;
				asmcode<<"addi r4, r0, 0"<<endl;
				asmcode<<"addi r5, r0, "<<func->END_PARAMETER_MARKER<<endl; // get parameter start address
				asmcode<<"subi r5, r5, "<<func->alias<<endl; // get parameter end address
				asmcode<<"addi r7, r5, 0"<<endl;
				asmcode<<"sub r2, r2, r5"<<endl;

				asmcode<<"lw r14, functionCallStack_ponter(r0)"<<endl;
				asmcode<<"sw functionCallStack(r14), r15"<<endl;

				asmcode<<"jl r15 , MEMORY_COPY"<<endl;

				asmcode<<"lw r14, functionCallStack_ponter(r0)"<<endl;
				asmcode<<"lw r15, functionCallStack(r14)"<<endl;

				//memoryCopy_byRegister(funcVar->alias, from_pointer, functionCallStack_recursion ,into_pointer, memory_size_end); // from, into, memory

				//asmcode<<"sub r2, r2, r7"<<endl;
				asmcode<<"sw "<<functionCallStack_ponter_recursion<<"(r0)"<<","<<"r2"<<endl;

				asmcode<<"addi r14, r0, MEMORY_COPY_REGISTRY_STORE"<<endl;
				asmcode<<"lw r1, 0(r14)"<<endl;
				asmcode<<"lw r2, 4(r14)"<<endl;
				asmcode<<"lw r3, 8(r14)"<<endl;
				asmcode<<"lw r4, 12(r14)"<<endl;
				asmcode<<"lw r5, 16(r14)"<<endl;
				asmcode<<"lw r6, 20(r14)"<<endl;
				asmcode<<"lw r7, 24(r14)"<<endl;


				//--------------------------------------------------------------------------

				//-------------------assign return value --------------------------------------
				asmcode<<"sw "<<func->returnValue_alias<<"(r0)"<<","<<reg<<endl;
				initialize_registerTo_0(reg);
				initialize_registerTo_0(reg_startingAddress);

				//-----------------------------			
			}

		}
		if(!m_currentSemanticStack.empty()) 
			m_currentSemanticStack.pop();

		action = "";

	}else if(action == "Validate_Signature_type" &&  !m_currentSemanticStack.empty()){
		SimpleVar* var = m_currentSemanticStack.top(); // just computed expression
		m_currentSemanticStack.pop(); // if we pop  we get function
		if(m_currentSemanticStack.empty()) return;
		if(m_currentSemanticStack.top()->obgect_type == "function" ){
			if(m_currentSemanticStack.top()->type != "error_type"){
				FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top()->clone());
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(funcVar);
				if(!funcVar->signature.empty()){
					//-------------------------
					SimpleVar* signature_var = funcVar->signature.front();

					funcVar->signature.pop_front();
					if(var->expressionType != "" && signature_var->expressionType != var->expressionType || signature_var->type != var->type ){
						if( signature_var->expressionType != var->expressionType ){
							stringstream str;
							str<<"SEMERR#9:	Function parameter type missmatch on line# "<<m_lastToken.m_location<<" => <" <<signature_var->expressionType<< "> is required"<< " in function "<< funcVar->name <<" for parameter "<< signature_var->name <<endl;
							outputSemErr(str.str());
							funcVar->type = "error_type";
						}else if ( signature_var->type != var->type ){

							stringstream str;
							str<<"SEMERR#9:	Function parameter type missmatch on line# "<<m_lastToken.m_location<<" => <" <<signature_var->type<< "> is required"<< " in function "<< funcVar->name <<" for parameter "<< signature_var->name <<endl;
							outputSemErr(str.str());
							funcVar->type = "error_type";
						}
					}else { //generate function parameter code @@@@@@@@@@@@
						if(signature_var->expressionType == signature_var->type) // if it is a simple variable then just copy 4 bites
						{

							if(m_regStack.empty()) return;
							string from_pointer = m_regStack.top();
							m_regStack.pop();
							if(m_regStack.empty()) return;
							string into_pointer = m_regStack.top();
							m_regStack.pop();
							if(dynamic_cast<ArrayElement*>(var) != NULL){  //if it is an array element
								asmcode<<"lw "<< from_pointer <<","<<var->runtime_offset <<"(r0)"<<endl;
								asmcode<<"addi "<<from_pointer<<","<<from_pointer<<","<<var->address;
								asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl;

							}else if(var->type != "int" && var->type != "float" ){ // if it is a class
								ClassVar* cl_var = dynamic_cast<ClassVar*>(m_GlobalScop->search(var->type));
								if( cl_var != NULL)
									asmcode<<"addi "<<from_pointer<<","<<"r0"<<","<<var->address  <<endl;
								asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl;
							}else {
								asmcode<<"addi "<<from_pointer<<","<<"r0"<<","<<var->address<<endl;
								asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl;

							}


							int memSize = signature_var->computeMemorySize(m_GlobalScop, getErrorCount());
							memoryCopy(var->alias, from_pointer, signature_var->alias,into_pointer, memSize); // from, into, memory

							initialize_registerTo_0(from_pointer) ;
							initialize_registerTo_0(into_pointer) ;

						} else{
							//(string from, int from_pointer, string into, int into_pointer ,int memoryAmount
							if(compare_array_dimention_list( signature_var->dimention_list, var->dimention_list )){

								if(m_regStack.empty()) return;
								string from_pointer = m_regStack.top();
								m_regStack.pop();
								if(m_regStack.empty()) return;
								string into_pointer = m_regStack.top();
								m_regStack.pop();

								asmcode<<"addi "<<from_pointer<<","<<"r0"<<","<<"0"<<endl;
								asmcode<<"addi "<<into_pointer<<","<<"r0"<<","<<"0"<<endl;
								memoryCopy(var->alias, from_pointer, signature_var->alias,into_pointer, signature_var->computeMemorySize(m_GlobalScop, getErrorCount())); // from, into, memory
								initialize_registerTo_0(from_pointer) ;
								initialize_registerTo_0(into_pointer) ;

							}else{
								stringstream str;
								str<<"SEMERR#5:		Invalid parameter list on line# "<<m_lastToken.m_location<<" :"<<funcVar->name<<" array boundares are not matched  in "<< signature_var->name<<endl;
								outputSemErr(str.str());
								funcVar->type = "error_type";

							}
						}
					}
				}	else{ 
					stringstream str;
					str<<"SEMERR#5:		Invalid parameter list on line# "<<m_lastToken.m_location<<"	:"<<funcVar->name<<"	"<<funcVar->numberOfParameters <<" parameters are required"<<endl;
					outputSemErr(str.str());
					funcVar->type = "error_type";
				}
			}else{
				if(m_currentSemanticStack.empty()) return;
				FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top()->clone());
				if(funcVar != NULL)
				{            ////if(!funcVar->signature.empty())
					m_currentSemanticStack.pop();
					m_currentSemanticStack.push(funcVar);
					if(!funcVar->signature.empty()){
						SimpleVar* signature_var = funcVar->signature.front();
						funcVar->signature.pop_front();
						if(signature_var->expressionType != var->expressionType || signature_var->type != var->type ){
							if( signature_var->expressionType != var->expressionType ){
								stringstream str;
								str<<"SEMERR#9:	Function parameter type missmatch on line# "<<m_lastToken.m_location<<" => <" <<signature_var->expressionType<< "> is required"<< " in function "<< funcVar->name <<" for parameter "<< signature_var->name <<endl;
								outputSemErr(str.str());
								funcVar->type = "error_type";
							}else if ( signature_var->type != var->type ){

								stringstream str;
								str<<"SEMERR#9:	Function parameter type missmatch on line# "<<m_lastToken.m_location<<" => <" <<signature_var->type<< "> is required"<< " in function "<< funcVar->name <<" for parameter "<< signature_var->name <<endl;
								outputSemErr(str.str());
								funcVar->type = "error_type";
							}
						}else  if(signature_var->expressionType != signature_var->type)
						{ if(! compare_array_dimention_list( signature_var->dimention_list, var->dimention_list )){
							stringstream str;
							str<<"SEMERR#5:		Invalid parameter list on line# "<<m_lastToken.m_location<<" :"<<funcVar->name<<" array boundares are not matched  in "<< signature_var->name<<endl;
							outputSemErr(str.str());
							funcVar->type = "error_type";


						}
						}
					}
				}

			}
		} else{
			if(m_currentSemanticStack.top()->type != "error_type"){

				stringstream str;
				str<<"SEMERR#2:	Invalid Function on line#	"<<m_lastToken.m_location<< "	Is not a function:	"<<m_currentSemanticStack.top()->name;
				outputSemErr(str.str());


				m_currentSemanticStack.top()->type = "error_type";
			}
		}
		action = "";
	} else if(action =="validate_put" &&  !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){
		if(m_currentSemanticStack.top()->type == "error_type" && m_scopeHeararchy.top()->isDeclaredProperly) {

			stringstream str;
			//str<<"SEMERR#6:	Type mismatch on line#	" << m_currentToken->m_location<<"	:parameter of the same type are required" <<endl;
			outputSemErr(str.str());


		}else if(m_currentSemanticStack.top()->type != "int" && m_currentSemanticStack.top()->type != "float"){
			stringstream str;
			str<<"SEMERR#20:	Invalid operation on line#	" << m_lastToken.m_location<<"	:<put>  is defined only for <int> and <float> values"<<endl;
			outputSemErr(str.str());


		}else if(m_currentSemanticStack.top()->obgect_type == "array_Variable"){
			stringstream str;
			str<<"SEMERR#20:	Invalid operation on line#	" << m_lastToken.m_location<<"	:<put>  is defined only for <int> and <float> values"<<endl;
			outputSemErr(str.str());


		}
		else{

			storeRegistries();

			if(m_regStack.empty()) return;
			string readdr_reg = m_regStack.top(); // modified version of <reg>
			m_regStack.pop();
			if(m_regStack.empty()) return;


			string temp_reg_OFFSET = m_regStack.top(); // modified version of <reg>
			m_regStack.pop();
			//--------------------- OFFSET--------------
			if(m_currentSemanticStack.top()->runtime_offset != "0")
				asmcode<<"lw "<<temp_reg_OFFSET<<","<<m_currentSemanticStack.top()->runtime_offset<<"(r0)"<<endl;
			else
				asmcode<<"addi "<<temp_reg_OFFSET<<","<<"r0"<<","<<"0"<<endl;
			///---------------------------------------


			asmcode<<"addi "<<readdr_reg<<","<<"r0"<<","<<m_currentSemanticStack.top()->address<<endl;
			asmcode<<"add "<<readdr_reg<<","<<readdr_reg<<","<<temp_reg_OFFSET<<endl;
			asmcode<<"lw "<< "r14"<<","<< m_currentSemanticStack.top()->alias<<"(" <<readdr_reg<< ")"<<endl;
			string type = m_currentSemanticStack.top()->type;
			if(!m_currentSemanticStack.empty())
			{
				m_currentSemanticStack.pop();

				if(type == "float")
					asmcode<<"jl  "<<"r15,"<< "writereal"<<endl; // jump to the function called
				else
					asmcode<<"jl  "<<"r15,"<< "putint"<<endl; // jump to the function called

			}
			restoreRegistries();
			initialize_registerTo_0(readdr_reg);
			//			initialize_registerTo_0(reg_keep_functionCallPointer);
			initialize_registerTo_0(temp_reg_OFFSET);
		}
		action = "";
	} else if(action == "process_get" && !m_currentSemanticStack.empty()){
		if( m_currentSemanticStack.top()->obgect_type != "array_Variable" ){
			if(m_GlobalScop->search(m_currentSemanticStack.top()->type) == NULL){

				storeRegistries(); // store the content of registeries before jumping to the function
				string type = m_currentSemanticStack.top()->type;
				if(type == "float")
					asmcode<<"jl  "<<"r15,"<< "readreal"<<endl;
				else
					asmcode<<"jl  "<<"r15,"<< "getint"<<endl;

				if(m_regStack.empty()) return;
				string offset_reg = m_regStack.top();
				m_regStack.pop();


				asmcode<<m_currentSemanticStack.top()->cout_AddressCode(m_currentSemanticStack.top()->address , offset_reg); // => take right side offset
				asmcode<<"sw "<<m_currentSemanticStack.top()->alias<<"("<<offset_reg <<")"<<","<<" r14"<<endl; // load right side operand

				initialize_registerTo_0(offset_reg);
				restoreRegistries();
			} else {

				stringstream str;
				str<<"SEMERR#20:	Invalid  operation on line# "<<m_lastToken.m_location <<" :	<get>  is defined only for <int> and <float> variables "<<  endl;
				outputSemErr(str.str());
			}
		}else {
			ArrayVar* arr_var =dynamic_cast<ArrayVar*>(m_currentSemanticStack.top());
			if(arr_var->runtime_exp_list.empty()){
				stringstream str;
				str<<"SEMERR#20:	Invalid  operation on line# "<<m_lastToken.m_location <<" :	<get>  is defined only for <int> and <float> variables"<<  endl;
				outputSemErr(str.str());
			}else{

				storeRegistries(); // store the content of registeries before jumping to the function
				string type = m_currentSemanticStack.top()->type;
				if(type == "float")
					asmcode<<"jl  "<<"r15,"<< "readreal"<<endl;
				else
					asmcode<<"jl  "<<"r15,"<< "getint"<<endl;

				if(m_regStack.empty()) return;
				string offset_reg = m_regStack.top();
				m_regStack.pop();


				asmcode<<m_currentSemanticStack.top()->cout_AddressCode(m_currentSemanticStack.top()->address , offset_reg); // => take right side offset
				asmcode<<"sw "<<m_currentSemanticStack.top()->alias<<"("<<offset_reg <<")"<<","<<" r14"<<endl; // load right side operand

				initialize_registerTo_0(offset_reg);
				restoreRegistries();

			}

		}

	}else if(action == "V_into_param"  && !m_currentSemanticStack.empty() && !m_acumulater.empty()){
		m_currentSemanticStack.top()->name = m_acumulater.top()->m_lexem;
		m_acumulater.pop();
		if(m_acumulater.empty()) return;
		m_currentSemanticStack.top()->type = m_acumulater.top()->m_lexem;

		m_currentSemanticStack.top()->objectLineNumber = m_acumulater.top()->m_location;
		m_currentSemanticStack.top()->obgect_type = "simple_variable";

	} else if(action == "check_Dim_Count"  && !m_currentSemanticStack.empty()){
		if(m_currentSemanticStack.top()->obgect_type == "array_Variable"){
			ArrayVar* array_var = dynamic_cast<ArrayVar*>(m_currentSemanticStack.top());
			if(array_var != NULL ){
				if(!array_var->dimention_list->empty()) {
					if(array_var->expressionType ==array_var->type ){ // an array element is used
						stringstream str;
						str<< "SEMERR#10:	Wrong number of indices  on line# "<< m_lastToken.m_location<<":	"<<array_var->name<<"=> "<<array_var->numberOf_DIM <<" dimentions are required"<<endl<<endl;
						outputSemErr(str.str());
					}

				}

			}
		}
	}else if(action == "is_type_bool" &&  !m_currentSemanticStack.empty()){
		if(m_currentSemanticStack.top()->type != "bool")
			m_currentSemanticStack.top()->type == "error_type";

	} else if(action ==  "PoP_SemanticStack" &&  !m_currentSemanticStack.empty()){
		m_currentSemanticStack.pop();
		action = "";

	} else if(action == "is_Declared" && !m_acumulater.empty()){
		SimpleVar* var;
		var = search_scopeHeararchy(m_acumulater.top()->m_lexem);
		if(var != NULL){
			if(var->isAlreadyDeclared == false){
				var->isAlreadyDeclared = true;
				m_currentSemanticStack.push(var->clone());
			} else {
				{
					stringstream str;
					str<<"SEMERR#11:	Multiply declared identifier on line# "<<m_currentToken->m_location<<" : "<< m_acumulater.top()->m_lexem <<endl; 
					outputSemErr(str.str());
				}

				SimpleVar* var_emplty = new SimpleVar(m_acumulater.top()->m_lexem, "error_type");
				var_emplty->objectLineNumber = m_acumulater.top()->m_location;
				var_emplty->isDeclaredProperly = false;
				var_emplty->obgect_type = ""; 
				m_currentSemanticStack.push(var_emplty);
			}

		}else {
			SimpleVar* var_emplty = new SimpleVar(m_acumulater.top()->m_lexem, "error_type");
			var_emplty->objectLineNumber = m_acumulater.top()->m_location;
			var_emplty->isDeclaredProperly = false;
			var_emplty->obgect_type = ""; 
			m_currentSemanticStack.push(var_emplty);
			{
				stringstream str;
				str<<"SEMERR#1:	Undeclared identifier on line# "<< m_lastToken.m_location <<" : "<< var_emplty->name << endl;
				outputSemErr(str.str());
			}
		}
		action = "";
	}else if(action ==  "process_assignOp" &&  !m_currentSemanticStack.empty()){


		if(m_regStack.empty()) return;
		string regOffset_rs = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;

		string regOffset_ls = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;

		string reg_rs = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;

		string reg_ls = m_regStack.top();
		m_regStack.pop();


		if(!m_currentSemanticStack.empty())
		{
			asmcode<<m_currentSemanticStack.top()->cout_AddressCode( m_currentSemanticStack.top()->address, regOffset_rs);
			SimpleVar* var_rs = m_currentSemanticStack.top();

			var_rs->name = m_currentSemanticStack.top()->name;
			var_rs->alias = m_currentSemanticStack.top()->alias;
			var_rs->address = m_currentSemanticStack.top()->address;

			m_currentSemanticStack.pop();


			if(!m_currentSemanticStack.empty())
			{
				if(var_rs->type != "error_type" || m_currentSemanticStack.top()->type !="error_type" ){
					if(var_rs->expressionType == "array" || m_currentSemanticStack.top()->expressionType == "array" ){

						stringstream str;
						str<<"SEMERR#20:	Invalid  operation on line# "<<m_lastToken.m_location <<" :	Assignment operation is not defined on arryas"<<  endl;
						outputSemErr(str.str());
					}else {

						asmcode<<m_currentSemanticStack.top()->cout_AddressCode(m_currentSemanticStack.top()->address, regOffset_ls);
						asmcode<<"lw "<<reg_rs<<","<<var_rs->alias<<"("<<regOffset_rs <<")"<<endl;
						asmcode<<"sw "<<m_currentSemanticStack.top()->alias<<"("<<regOffset_ls<<")"<<","<< reg_rs<<endl;
					}
				}
			}
		}
		initialize_registerTo_0(regOffset_ls);
		initialize_registerTo_0(regOffset_rs);
		initialize_registerTo_0(reg_rs);
		initialize_registerTo_0(reg_ls);
		if(m_currentSemanticStack.empty()) return;
		m_currentSemanticStack.pop();



	} else if(action == "Save_assignOp" &&  !m_currentSemanticStack.empty()){
		stringstream strm;
		if(m_regStack.empty()) return;
		string reg = m_regStack.top();
		m_regStack.pop();
		if(!jump_marker_stack.empty())
		{
			string endMarker = jump_marker_stack.top(); // save end marker
			jump_marker_stack.pop();
			if(!jump_marker_stack.empty())
			{
				strm<<"lw "<<reg<<","<<m_currentSemanticStack.top()->alias<<"(r0)"<<endl; // push content of alia into <reg>
				m_currentSemanticStack.pop();
				if(!m_currentSemanticStack.empty())
				{
					strm<< "sw "<<m_currentSemanticStack.top()->alias<<"(r0)"<<","<<reg<<endl; // process assignment
					strm<<"j "<<jump_marker_stack.top()<<endl; // go to the beegginning of statment

					if(!jump_marker_stack.empty())
					{
						jump_marker_stack.pop();
						jump_marker_stack.push(endMarker); //end marker
						jump_marker_stack.push(strm.str()); //assignment operation
						m_currentSemanticStack.pop();
					}
				}
			}
		}

		strm<<"sub "<<reg<<","<<reg<<","<<reg<<endl; // initialize register to <0>
		m_regStack.push(reg);


		action = "";
	}else if(action == "create_operation" &&  !m_currentSemanticStack.empty() && !m_acumulater.empty()){
		Operation* operation = new Operation(); 
		operation->operator_ = m_acumulater.top()->m_lexem;
		operation->operand = m_currentSemanticStack.top();
		operation->type = m_currentSemanticStack.top()->type;


		operation->expressionType = m_currentSemanticStack.top()->expressionType;
		operation->alias = m_currentSemanticStack.top()->alias;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(operation);
		action = "";

	}else if(action == "generate_ENDIF_marker"){
		jump_marker_stack.push(generate_ENDIF_marker());
		action = "";

	}else if(action ==  "generate_ELSE_marker"){
		jump_marker_stack.push(generate_ELSE_marker());
		action = "";

	}else if(action ==  "POP_jump_marker_stack"){
		if(!jump_marker_stack.empty())jump_marker_stack.pop();
		action = "";

	}else if(action ==  "jump_ENDIF" && !jump_marker_stack.empty()){   //ENDIF_marker  ELSE_marker
		string marker = jump_marker_stack.top(); // keep ELSE_marker
		if(jump_marker_stack.empty())
			return;
		jump_marker_stack.pop();
		if(jump_marker_stack.empty())
			return;
		asmcode<<"j "<<jump_marker_stack.top()<<endl;
		jump_marker_stack.push(marker); // push bac
		action = "";

	}else if(action ==  "mark_ELSE"){
		if(!jump_marker_stack.empty()) asmcode<<jump_marker_stack.top() <<"	nop"<<endl;
		action = "";

	}else if(action == "mark_ENDIF"){
		if(!jump_marker_stack.empty()) asmcode<<jump_marker_stack.top()<< "	nop"<<endl;
		action = "";

	}else if(action == "generate_FOR_marker"){
		jump_marker_stack.push(generate_jump_marker("FOR_")); //generate marker for <for>
		asmcode<<jump_marker_stack.top()<<endl;
		action = "";

	}else if(action ==  "jump_FOR" && !jump_marker_stack.empty()){
		asmcode<<jump_marker_stack.top()<<endl;
		jump_marker_stack.pop();
		action = "";

	}else if(action == "generate_END_FOR_marker" && !jump_marker_stack.empty()){
		jump_marker_stack.push(generate_jump_marker("END_FOR_"));
		action = "";

	}else if(action ==  "mark_END_FOR"){
		if(!jump_marker_stack.empty()) asmcode<<jump_marker_stack.top()<<endl; 
		action = "";

	}else if( action == "POP_ScopeHeararchy" && !m_scopeHeararchy.empty() && !m_currentSemanticStack.empty()){
		FunctionVar* var = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
		if(var != NULL){
			if(var->isClassMember ) m_scopeHeararchy.pop();
		}

		action = "";
	}else if(action ==  "compute_offset" && !m_currentSemanticStack.empty()){
		if( m_currentSemanticStack.top()->isDeclaredProperly && m_currentSemanticStack.top()->type != "error_type" )
			compute_offset_code(m_currentSemanticStack.top());

		action = "";
	}else if(action == "generate_function_marker" && !m_scopeHeararchy.empty()){
		FunctionVar* var =  dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		if(var != NULL){
			//var->jump_marker = generate_jump_marker("FUNC_") + var->name;
			declar<< var->returnValue_alias<<" dw 0"<<endl;
			NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
			asmcode<< var->jump_marker<<endl;
		}
		action = "";
	}else if(action == "generate_program_marker"){
		asmcode<< "program"<<endl;

		action = "";
	}else if(action ==  "reserve_parameter_stack" && !m_scopeHeararchy.empty()){
		int size = 0;
		FunctionVar* var =  dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		if(var != NULL){
			size = var->reserveParameterStack();
			//string newAlias = generate_Alias();
			//var->alias_parameterStack = newAlias;
			/*@		declar<<var->alias_parameterStack<<"  dw 0"<<endl;
			if(size != 0){
			declar<<"res "<<size <<endl;
			if(size % 4 != 0)
			declar<<"align"<<endl;
			}*/
		}
		action = "";
	}else if(action == "jump_to_function" && !m_currentSemanticStack.empty()){
		//	FunctionVar* var =  dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		FunctionVar* var =  dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());

		if(var != NULL){

			/*string reg = m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;
			asmcode<<"% store function call stack pointer"<<endl;
			asmcode<<"lw "<<reg<<","<<"functionCallStack_ponter(r0)"<<endl;
			asmcode<<"sw "<<"functionCallStack"<<"(" <<reg  <<")"<<","<<"r15"<<endl;
			asmcode<<"addi "<<reg<<","<<reg<<","<<"4"<<endl;
			asmcode<<"sw "<<"functionCallStack_ponter(r0)"<<","<<reg<<endl;


			initialize_registerTo_0(reg);
			*/
			storeRegistries();

			asmcode<<"jl  "<<"r15,"<< var->jump_marker<<endl; // jump to the function called

			restoreRegistries();
			/*reg = m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;
			asmcode<<"% restore function call stack pointer"<<endl;
			asmcode<<"lw "<<reg<<","<<"functionCallStack_ponter(r0)"<<endl;
			asmcode<<"subi "<<reg<<","<<reg<<","<<"4"<<endl;
			asmcode<<"sw "<<"functionCallStack_ponter(r0)"<<","<<reg<<endl;
			asmcode<<"lw "<<"r15"<<","<<"functionCallStack"<<"(" <<reg  <<")"<<endl;
			asmcode<<"% end restore function call stack pointer"<<endl;

			initialize_registerTo_0(reg);*/
		}
		action = "";

	}else if(action == "process_jump_back"){
		asmcode<<"jr "<<" r15"<<endl; 



		action = "";
	}else if(action ==  "reset_parameter_stack_pointer" && !m_scopeHeararchy.empty()){
		FunctionVar* var =  dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		if(var != NULL){
			//@			var->alias_parameterStack_pointer = 0;
		}

		action = "";
	}else if(action == "jump_end_program_marker"){

		asmcode<< "j "<< end_program_marker<<endl;
		action = "";
	}else if(action == "put_end_program_marker"){
		asmcode<<end_program_marker<<endl;
		action = "";

	}else if(action == "replace_By_return_value" && !m_currentSemanticStack.empty()){
		FunctionVar* var = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
		if(var != NULL){

			if(var->isClassMember && !var->compiletime_parent_object.empty()){
				string  compiletimeParent_alias = m_GlobalScop->search(var->compiletime_parent_object)->alias;
				int compiletimeparent_offset = m_GlobalScop->search(var->compiletime_parent_object)->address;
				SimpleVar * obj = m_GlobalScop->search(var->compiletime_parent_object);
				int memorySize = obj->computeMemorySize(m_GlobalScop, getErrorCount());

				if(m_regStack.empty()) return;
				string from_pointer = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;
				string into_pointer = m_regStack.top();
				m_regStack.pop();

				//		asmcode<<"lw "<< from_pointer <<","<< var->runtime_parent_address <<"(r0)"<<endl;
				//	asmcode<<"lw "<< into_pointer <<","<< compiletimeparent_offset <<"(r0)"<<endl;

				int fromAdd =   compiletimeparent_offset; // +4 is removed
				asmcode<<"addi "<< from_pointer <<","<<"r0"<<","<< compiletimeparent_offset <<endl;
				asmcode<<"addi "<< into_pointer <<","<<"r0"<<","<<var->runtime_parent_address<<endl;

				//	memoryCopy( var->runtime_parent_object, from_pointer, compiletimeParent_alias ,into_pointer, memorySize  ); // from, into, memory

				memoryCopy( compiletimeParent_alias, from_pointer,  var->runtime_parent_object ,into_pointer, memorySize  ); // from, into, memory


				initialize_registerTo_0(from_pointer) ;
				initialize_registerTo_0(into_pointer) ;

				SimpleVar* return_value = new SimpleVar(var->name,var->type);
				return_value->alias = var->returnValue_alias;
				return_value->address = var->address;
				if(m_currentSemanticStack.empty()) return;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(return_value);

			}

			SimpleVar* return_value = new SimpleVar(var->name,var->type);
			return_value->alias = var->returnValue_alias;
			return_value->address = var->address;
			if(m_currentSemanticStack.empty()) return;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(return_value);
		}
		action = "";
	}else if(action == "process_NOT" && !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){

		SimpleVar* var_factor = m_currentSemanticStack.top();
		SimpleVar* term = var_factor->clone();
		//==============================

		if(m_regStack.empty()) return;
		string regOffset_rs = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;
		string regOffset_ls = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;
		string reg3 =  m_regStack.top();
		m_regStack.pop();


		//		asmcode<<m_currentSemanticStack.top()->cout_AddressCode(regOffset_rs);

		asmcode<<var_factor->cout_AddressCode(var_factor->address, regOffset_rs); // => take right side offset
		asmcode<<"lw "<<reg3<<","<<var_factor->alias<<"("<<regOffset_rs <<")"<<endl; // load right side operand
		asmcode<<"not "<<reg3<<","<<reg3<<endl;

		string newAlias = generate_Alias();
		FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
		if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(newAlias, 4));

		declar<<newAlias<<"  dw 0"<<endl; //declar new variable
		NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
		asmcode<<"sw "<< newAlias<<"(r0),"<<reg3<<endl;


		term->name = newAlias;
		term->type = var_factor->type;
		term->alias = newAlias;
		term->address = 0;
		term->expressionType = var_factor->expressionType;
		m_currentSemanticStack.pop();
		m_currentSemanticStack.push(term);
		initialize_registerTo_0(reg3);
		initialize_registerTo_0(regOffset_ls);


		//	========================



	}else if( action == "createSignOperator" && !m_acumulater.empty()){

		Operation* operation = new Operation(); 
		operation->operator_ = m_acumulater.top()->m_lexem;

		m_currentSemanticStack.push(operation);
		action = "";

	}else if(action == "createSignFactor" && !m_currentSemanticStack.empty()){
		SimpleVar* factor_var = m_currentSemanticStack.top();
		m_currentSemanticStack.pop();
		if(!m_currentSemanticStack.empty()){
			Operation* operation_var = dynamic_cast<Operation*>(m_currentSemanticStack.top());

			if(operation_var != NULL){

				operation_var->name = factor_var->name;
				operation_var->type = factor_var->type;
				operation_var->obgect_type = factor_var->obgect_type;
				operation_var->expressionType = factor_var->expressionType;

				operation_var->alias = factor_var->alias;
				operation_var->runtime_offset = factor_var->runtime_offset;
				operation_var->address = factor_var->address;

				operation_var->operand = factor_var;
			}
		}
	}else if( action == "processSignOperation" && !m_currentSemanticStack.empty() && !m_scopeHeararchy.empty()){

		Operation* operation = dynamic_cast<Operation*>(m_currentSemanticStack.top());
		if(operation != NULL){
			string operator_ = operation->operator_;
			if(m_regStack.empty()) return;
			string reg3 =  m_regStack.top();
			m_regStack.pop();
			if(m_regStack.empty()) return;

			string offset_reg = m_regStack.top();
			m_regStack.pop();

			asmcode<<operation->cout_AddressCode(operation->address , offset_reg); // => take right side offset
			asmcode<<"lw "<<reg3<<","<<operation->alias<<"("<<offset_reg <<")"<<endl; // load right side operand
			asmcode<<addition_(operator_)<<" "<<reg3<<","<<"r0"<<","<<reg3<<endl;

			SimpleVar* finalObj = new SimpleVar(operation->operand->name,operation->operand->type );

			string newAlias = generate_Alias(); // create a new alias
			declar<<newAlias<<"  dw 0"<<endl; //declar new variable
			FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
			if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(newAlias,4));

			NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
			asmcode<<"sw "<< newAlias<<"(r0),"<<reg3<<endl;

			finalObj->alias = newAlias;
			finalObj->address = 0;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(finalObj);
			initialize_registerTo_0(reg3);
			initialize_registerTo_0(offset_reg);
		}

	}

	action = "";
}

void syntaxAnalizer::insert_program_action_c(){
	if( m_scopeHeararchy.empty())
		return;
	if(m_acumulater.empty())
		return;
	ClassVar* newClass = new ClassVar("program");
	newClass->objectLineNumber = m_acumulater.top()->m_location;
	newClass->obgect_type = "program";
	newClass->alias = "program";

	m_currentSemanticStack.push(newClass);
	if(m_GlobalScop->search("program") != NULL){
		//asmcode<<" Multiply declared identifier on the line	"<<m_acumulater.top()->m_location<<": " <<  "program" <<endl;

		newClass->isDeclaredProperly = false;
	}
	else {
		m_acumulater.pop();
		newClass->obgect_type = "program";
		m_scopeHeararchy.top()->insert("program",newClass);
		newClass->isDeclaredProperly = true;
		newClass->marked_undefined = false;
	}
}

void syntaxAnalizer::insert_program_action_c2(){
	if(m_acumulater.empty())
		return;
	ClassVar* newClass =dynamic_cast<ClassVar*>( m_GlobalScop->search("program"));

	if(newClass != NULL){
		newClass->objectLineNumber = m_acumulater.top()->m_location;
		if(newClass->isAlreadyDeclared == false){
			newClass->isAlreadyDeclared = true;
			m_currentSemanticStack.push(newClass);

		}else {
			{
				stringstream str;
				str<<"SEMERR#11:	Multiply  declared identifier  on line# "<<m_acumulater.top()->m_location<<": " <<  m_acumulater.top()->m_lexem <<endl;
				outputSemErr(str.str());
			}


			m_currentSemanticStack.push(newClass->clone());
			m_currentSemanticStack.top()->isDeclaredProperly = false;
			//newClass->isDeclaredProperly = false;
		}
	}else {
		if(m_currentSemanticStack.empty())
			return;
		ClassVar* newClass_err = new ClassVar("program");
		m_currentSemanticStack.top()->isDeclaredProperly = false;
		m_currentSemanticStack.push(newClass_err);
		m_numberOfSemanticErrors++;
		cout << "Class Name is empety" <<endl;
	}
	m_acumulater.pop();


}



void syntaxAnalizer::insertFunction_action_F(){

	if( m_scopeHeararchy.empty())
		return;

	string functionName;
	string returnType;
	if(m_currentSemanticStack.empty() ) return;
	functionName = m_currentSemanticStack.top()->name;
	returnType =  m_currentSemanticStack.top()->type;
	FunctionVar* funcVar = new FunctionVar(functionName, returnType, m_scopeHeararchy.top()->alias);

	funcVar->obgect_type = "function";
	funcVar->marked_undefined = m_currentSemanticStack.top()->marked_undefined;
	funcVar->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;
	if(m_currentSemanticStack.empty()) return;
	m_currentSemanticStack.pop();
	if(m_scopeHeararchy.top()->isDeclaredProperly){ // class is declared properly
		if(m_scopeHeararchy.top()->search(funcVar->name) == NULL){ // identifier is not used yet
			funcVar->alias = "func_" + m_scopeHeararchy.top()->alias + "_" + funcVar->name; //############################
			m_scopeHeararchy.top()->insert(functionName, funcVar);
			ClassVar* class_var = dynamic_cast<ClassVar*>(m_scopeHeararchy.top());
			if(class_var != NULL) {// mark that the function inserted is a class member rather than a free function

				//funcVar->address = class_var->address + class_var->pointer_to_variable;
				//class_var->pointer_to_variable = class_var->pointer_to_variable + funcVar->computeMemorySize(m_GlobalScop, getErrorCount());

				funcVar->isClassMember = true;
				funcVar->compiletime_parent_object = class_var->name;
				funcVar->runtime_parent_object = class_var->alias;  ////////PPPPPPPPPPPPPPPPPPPPP
				funcVar->runtime_parent_address = 0;
			}

			funcVar->isDeclaredProperly = true;
		}else {
			m_numberOfSemanticErrors++;
			//asmcode<< " Multiply declared identifier : " << funcVar->name << " on line# " << funcVar->objectLineNumber << endl;//?????????????????
			funcVar->isDeclaredProperly = false;
		}
	}else{ // ifclass is not declared properly
		funcVar->isDeclaredProperly = false;
	}
	m_currentSemanticStack.push(funcVar);


}

void syntaxAnalizer::insertFunction_action_F2(){
	if(m_currentSemanticStack.empty()) return;
	if(m_scopeHeararchy.empty()) return;
	string functionName = m_currentSemanticStack.top()->name;
	string returnType = m_currentSemanticStack.top()->type;
	int declarationLineNumber = m_currentSemanticStack.top()->objectLineNumber;
	FunctionVar* funcVar = NULL ;
	if(m_scopeHeararchy.top()->isDeclaredProperly)
		funcVar = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top()->search(functionName));
	if(	funcVar != NULL  ){

		funcVar->obgect_type = "function";
		if(m_currentSemanticStack.top()->type != "int" && m_currentSemanticStack.top()->type != "float"&& m_currentSemanticStack.top()->type != "error_type"){
			if( ! m_GlobalScop->search(m_currentSemanticStack.top()->type)){

				stringstream str;
				str<< "SEMERR#1:	Undeclared identifier on line# "<<m_lastToken.m_location<< " : "<<m_currentSemanticStack.top()->type << endl; 
				outputSemErr(str.str());


				if(m_scopeHeararchy.empty()) return;
				FunctionVar* funct_error = new FunctionVar(functionName, "error_type", m_scopeHeararchy.top()->alias);
				funct_error->isDeclaredProperly = false;
				funct_error->objectLineNumber = declarationLineNumber;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(funct_error);
				return;
			}
		}
		if(m_currentSemanticStack.empty()) return;
		m_currentSemanticStack.pop();
		if(funcVar != NULL){   // <funcVar> is the real object that is cepet in the scope heararchy

			if(funcVar->isAlreadyDeclared == false){

				funcVar->isAlreadyDeclared = true;
				declar<<funcVar->alias<<endl;
				//m_scopeHeararchy.push(funcVar);
				m_currentSemanticStack.push(funcVar);


			}else {

				{
					stringstream str;
					str<< "SEMERR#11:	Multiply declared identifier on line# " << m_lastToken.m_location << " : "<< funcVar->name <<  endl;
					outputSemErr(str.str());
				}

				m_currentSemanticStack.push(funcVar->clone());
				m_currentSemanticStack.top()->isDeclaredProperly = false;
				m_currentSemanticStack.top()->objectLineNumber = declarationLineNumber;
			}
		}else {
			if(m_scopeHeararchy.empty()) return;
			FunctionVar* funct_error = new FunctionVar(functionName, "error_type", m_scopeHeararchy.top()->alias);
			funct_error->isDeclaredProperly = false;
			funct_error->objectLineNumber = declarationLineNumber;
			if(m_currentSemanticStack.empty()) return;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(funct_error);
		}
	} else { // it is the case when we have eiter reppitting class or repitting function 
		SimpleVar* var = NULL;
		if(m_scopeHeararchy.empty()) return;
		if(m_scopeHeararchy.top()->isDeclaredProperly)
			var = m_scopeHeararchy.top()->search(functionName);
		if(var != NULL){
			{
				stringstream str;
				str<< "SEMERR#11:	Multiply declared identifier on line# " << m_lastToken.m_location << " : "<< var->name <<  endl;
				outputSemErr(str.str());
			}
			if(m_scopeHeararchy.empty()) return;
			FunctionVar* funct_error = new FunctionVar(functionName, "error_type", m_scopeHeararchy.top()->alias);
			funct_error->isDeclaredProperly = false;
			funct_error->objectLineNumber = declarationLineNumber;
			if(m_currentSemanticStack.empty()) return;
			m_currentSemanticStack.pop();
			m_currentSemanticStack.push(funct_error);
		}


	}

}


void syntaxAnalizer::insertFunctionParameter_FP(){

	if(m_currentSemanticStack.empty()) return;
	//	m_acumulater.pop(); // remove <,> or <)>
	SimpleVar* var = m_currentSemanticStack.top();
	//var->obgect_type = "function_parameter";
	m_currentSemanticStack.pop();
	if(m_currentSemanticStack.empty())
		return;
	FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
	if(funcVar!= NULL && funcVar->isDeclaredProperly){
		if(var->obgect_type == "array_Variable"){

			ArrayVar* array_var = new ArrayVar(var->name, var->type);
			array_var->objectLineNumber = var->objectLineNumber;

			array_var->marked_undefined = var->marked_undefined;
			if(var->dimention_list != NULL){
				array_var->dimention_list = new list<int>();
				list<int>::iterator it = var->dimention_list->begin();
				array_var->numberOf_DIM = var->dimention_list->size();
				for(; it != var->dimention_list->end(); ++it)
					array_var->dimention_list->push_back(*it);
				var = array_var;	
			}
		}

		var->isFunctionParam = true;
		var->isDeclaredProperly = true;
		if(funcVar->searchInSignture(var->name) == NULL){

			funcVar->signature.push_back(var);


			string newAlias = funcVar->alias + "_" + var->name;
			funcVar->searchInSignture(var->name)->alias = newAlias;

		}
		//funcVar->insert(var->name, var);
	}

}


void syntaxAnalizer::insertFunctionParameter_FP2(){
	if(m_currentSemanticStack.empty()) return;
	if(m_acumulater.empty()) return;
	m_acumulater.pop(); // remove <,> or <)>
	SimpleVar* var = m_currentSemanticStack.top();
	//var->obgect_type = "function_parameter";
	m_currentSemanticStack.pop();
	if(m_currentSemanticStack.empty()) return;
	FunctionVar* funcVar = dynamic_cast<FunctionVar*>(m_currentSemanticStack.top());
	if( funcVar!= NULL && funcVar->isDeclaredProperly){
		var->isFunctionParam = true;
		if(funcVar->searchInSignture(var->name) != NULL){
			if(funcVar->searchInSignture(var->name)->isAlreadyDeclared ) {
				stringstream str;
				str << "SEMERR#11:	Multipely declared identifier on line# "<<m_lastToken.m_location<< " : " << var->name <<endl;
				outputSemErr(str.str());
			}
			else {
				funcVar->searchInSignture(var->name)->isAlreadyDeclared = true;

				//declar variable for function parameter

				string newAlias = funcVar->searchInSignture(var->name)->alias;
				int var_size = funcVar->searchInSignture(var->name)->computeMemorySize(m_GlobalScop, getErrorCount());
				if(  var_size > 4){
					declar<<newAlias   <<endl; //<<" dw 0"<<endl;
					declar<<"res "<<var_size<<endl;  // added by Vika
					NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + var_size;
				}else {
					declar<< newAlias<<" dw 0"<<endl;
					NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
				}
				if(m_regStack.empty()) return;
				string reg = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;

				string reg2 = m_regStack.top();
				m_regStack.pop();

				//@	asmcode<<"addi "<<reg<<","<<"r0"","<<funcVar->alias_parameterStack_pointer<<endl;
				//@		asmcode<<"lw "<<reg2<<","<<funcVar->alias_parameterStack<<"("<<reg<<")"<<endl;
				//@asmcode<< "sw "<< newAlias<<"(r0)"<<","<< reg2<<endl;    

				initialize_registerTo_0(reg);
				initialize_registerTo_0(reg2);




				//copy parameter from parameter stack into a variable

				/*		string newAlias = funcVar->alias + "_" + var->name;
				funcVar->searchInSignture(var->name)->alias = newAlias;

				declar<<newAlias<<" dw 0"<<endl;

				if(m_regStack.empty()) return;
				string reg = m_regStack.top();
				m_regStack.pop();
				if(m_regStack.empty()) return;

				string reg2 = m_regStack.top();
				m_regStack.pop();

				asmcode<<"addi "<<reg<<","<<"r0"","<<funcVar->alias_parameterStack_pointer<<endl;
				asmcode<<"lw "<<reg2<<","<<funcVar->alias_parameterStack<<"("<<reg<<")"<<endl;
				asmcode<< "sw "<< newAlias<<"(r0)"<<","<< reg2<<endl;    

				initialize_registerTo_0(reg);
				initialize_registerTo_0(reg2);

				funcVar->alias_parameterStack_pointer = funcVar->alias_parameterStack_pointer + funcVar->searchInSignture(var->name)->reserveMemoryBlock();
				*/
			}
		}
	}
	if(var->type != "int" && var->type != "float"){
		if( ! m_GlobalScop->search(var->type)) {
			{
				stringstream str;
				str<< "SEMERR#12:	Undefined identifier on line# "<<m_lastToken.m_location<< " : "<<var->type << endl; 
				outputSemErr(str.str());
			}

		}
	}

}

void syntaxAnalizer::insert_action_IV(){
	SimpleVar* var = NULL;
	if(m_acumulater.empty())
		return;
	if(m_scopeHeararchy.empty()) return;
	if(m_currentSemanticStack.top()->obgect_type == "array_Variable"){
		ArrayVar* array_var = new ArrayVar(m_currentSemanticStack.top()->name, m_currentSemanticStack.top()->type);
		array_var->objectLineNumber = m_currentSemanticStack.top()->objectLineNumber;

		array_var->marked_undefined = m_currentSemanticStack.top()->marked_undefined;
		if(m_currentSemanticStack.top()->dimention_list != NULL){
			array_var->dimention_list = new list<int>();
			list<int>::iterator it = m_currentSemanticStack.top()->dimention_list->begin();
			array_var->numberOf_DIM = m_currentSemanticStack.top()->dimention_list->size();
			for(; it != m_currentSemanticStack.top()->dimention_list->end(); ++it)
				array_var->dimention_list->push_back(*it);
			var = array_var;	
		}
	}else
		var = m_currentSemanticStack.top()->clone();

	m_currentSemanticStack.pop();
	if(m_scopeHeararchy.top()->isDeclaredProperly){
		if(m_scopeHeararchy.top()->search(var->name) != NULL){
			var->isDeclaredProperly = false;
			m_numberOfSemanticErrors++;
			//cout<< "Multiply declared identifier on the line# "<< var->objectLineNumber<<": " << var->name  <<endl;
		}
		else{
			var->isDeclaredProperly = true;
			var->alias = m_scopeHeararchy.top()->alias + "_" + var->name;
			ClassVar* clas_var = dynamic_cast<ClassVar*>( m_scopeHeararchy.top());

			ClassVar* insertedClassVar = dynamic_cast<ClassVar*>(m_GlobalScop->search(var->type));

			if(insertedClassVar == NULL || 
				clas_var != NULL && insertedClassVar->simbolTable.searchByType(clas_var->name, m_GlobalScop) == NULL &&
				insertedClassVar->name != clas_var->name ) // if there is no circular reference
			{
				if(clas_var != NULL){
					if(clas_var->name != "program")
						var->address = clas_var->address + clas_var->pointer_to_variable;
					else 
						var->address = 0;
					clas_var->pointer_to_variable = clas_var->pointer_to_variable + var->computeMemorySize(m_GlobalScop, getErrorCount());
				}

				m_scopeHeararchy.top()->insert(var->name, var);
				m_scopeHeararchy.top()->miban.push_back(pair<string, string>(var->name, var->type));
			}
			else
			{
				stringstream str;
				str<< "SEMERR# CIRCULAR REFERENCE is detected on line #" << m_lastToken.m_location <<endl;
				outputSemErr(str.str());
			}
		}
	}
	m_acumulater.pop(); // remove <;>


}

void syntaxAnalizer::insert_action_IV_FOR(){
	SimpleVar* var = NULL;
	if(m_currentSemanticStack.empty()) return;
	if(m_scopeHeararchy.empty()) return;
	var = m_currentSemanticStack.top()->clone();

	//m_currentSemanticStack.pop();

	if(m_scopeHeararchy.top()->isDeclaredProperly){
		if(m_scopeHeararchy.top()->search(var->name) != NULL){
			var->isDeclaredProperly = false;
			stringstream str;
			str<< "SEMERR#11:	Multiply declared identifier on  line# "<< var->objectLineNumber<<": " << var->name  <<endl;
			outputSemErr(str.str());
		}
		else{
			if(var->type != "int"){
				m_currentSemanticStack.top()->alias = var->alias = m_scopeHeararchy.top()->alias + "_" + var->name;
				m_currentSemanticStack.top()->isAlreadyDeclared = true;
				m_currentSemanticStack.top()->isDeclaredProperly = true;
				m_scopeHeararchy.top()->insert(m_currentSemanticStack.top()->name, m_currentSemanticStack.top());
				m_currentSemanticStack.pop();

				//m_scopeHeararchy.top()->isDeclaredProperly = false;
				var->isDeclaredProperly = false;
				var->type = "error_type";
				var->alias = m_scopeHeararchy.top()->alias + "_" + var->name;
				m_currentSemanticStack.push(var);
				stringstream str;
				str<<"SEMERR#13:	Invalid type for loop variable on line#	"<<m_currentToken->m_location<<" integer type is required as a loop parameter"<<endl;
				outputSemErr(str.str());
			}else{
				var->isDeclaredProperly = true;
				var->isAlreadyDeclared = true;

				var->alias = m_scopeHeararchy.top()->alias + "_" + var->name;
				declar<<var->alias<<" dw 0"<<endl; // declar a variable @@@@@@@@@@@
				NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
				m_scopeHeararchy.top()->insert(var->name, var);
				if(m_currentSemanticStack.empty()) return;
				m_currentSemanticStack.pop();
				m_currentSemanticStack.push(var);
			}
		}
	}

}

void syntaxAnalizer::validateVariable(){
	if(m_acumulater.empty())
		return;
	SimpleVar* var;
	var = search_scopeHeararchy(m_acumulater.top()->m_lexem);
	if(var != NULL && var->isDeclaredProperly && var->type != "error_type"){
		m_currentSemanticStack.push(var->clone());
		/*			if(var->type != "int" && var->type != "float"){
		ClassVar* parentClass = dynamic_cast<ClassVar*>(m_GlobalScop->search(var->type));
		if(parentClass != NULL){
		m_currentSemanticStack.top()->address = parentClass->address;
		}
		} */
		m_currentSemanticStack.top()->address = 0;
	}else {
		SimpleVar* var_emplty;
		if(var == NULL){
			{
				stringstream str;
				str<<"SEMERR#1:	Undeclared identifier on line# "<< m_lastToken.m_location <<" : "<<m_acumulater.top()->m_lexem << endl<<endl;
				outputSemErr(str.str());
			}

			var_emplty = new SimpleVar(m_acumulater.top()->m_lexem, "error_type");
			var_emplty->objectLineNumber = m_acumulater.top()->m_location;
			var_emplty->isDeclaredProperly = false;
			var_emplty->obgect_type = ""; 
			m_currentSemanticStack.push(var_emplty);
		} else m_currentSemanticStack.push(var);

	}
}



void syntaxAnalizer::insert_action_IV2(){
	if(m_acumulater.empty())
		return;
	if(m_scopeHeararchy.empty()) return;
	SimpleVar* var = NULL;
	int size = 0;
	//	m_currentSemanticStack.top()->alias = m_currentSemanticStack.top()->name;
	var = m_currentSemanticStack.top(); // the top of the stack is a <Simplevar> object
	m_currentSemanticStack.pop();
	if(m_currentSemanticStack.empty()) return;
	if(m_currentSemanticStack.top()->isDeclaredProperly){
		SimpleVar* properlyDeclaredVar = m_scopeHeararchy.top()->search(var->name);
		if(properlyDeclaredVar != NULL){ 
			if(properlyDeclaredVar->isAlreadyDeclared == false){
				properlyDeclaredVar->isAlreadyDeclared = true;
				ClassVar* clas_var = dynamic_cast<ClassVar*>( m_GlobalScop->search(var->type));

				if(m_scopeHeararchy.top()->obgect_type == "class" && m_scopeHeararchy.top()->name != "program"){ // adding member of a class 

					ClassVar* scopeClass = dynamic_cast<ClassVar*>(m_scopeHeararchy.top());
					properlyDeclaredVar->address = scopeClass->address + scopeClass->pointer_to_variable;

					properlyDeclaredVar->alias = scopeClass->name + "_" +  properlyDeclaredVar->name;

					if(clas_var != NULL){ // if a  declared variable is an instance of a class

						if(properlyDeclaredVar->obgect_type != "array_Variable" ){  
							size = clas_var->computeMemorySize(m_GlobalScop, getErrorCount()) ; // remove size of the head
							if(size % 4 != 0)
								declar<<"align"<<endl;

						}else{// if variable is not an array => is an array of a class objects

							if(size % 4 != 0)
								declar<<"align"<<endl;
							size = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount()) ; //<4> bayts are kepet for alias => when declar alias 4 bayt is used 

						}
					}else 
						size = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount());

					if(clas_var != NULL){
						//int iii = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount());

						properlyDeclaredVar->address = scopeClass->pointer_to_variable ;

						scopeClass->pointer_to_variable = scopeClass->pointer_to_variable + size;
						if(size > 4){
							declar<<properlyDeclaredVar->alias<<endl;
							declar<<"res "<<size <<endl;
							NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + size;
						}else 
							declar<<properlyDeclaredVar->alias<<" dw 0"<<endl;
						NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
					}
					else {
						//int iii = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount());
						properlyDeclaredVar->address = scopeClass->pointer_to_variable;
						scopeClass->pointer_to_variable = scopeClass->pointer_to_variable + size;
						if(size > 4){
							declar<<properlyDeclaredVar->alias<<endl;
							declar<<"res "<<size <<endl;
							NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + size;
						}else
							declar<<properlyDeclaredVar->alias<<" dw 0"<<endl;
						NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
					}

				}else	if(clas_var != NULL && clas_var->name != "program"){ 
					int varSize;

					if(properlyDeclaredVar->obgect_type != "array_Variable") // if variable is not an array
						varSize = clas_var->computeMemorySize(m_GlobalScop, getErrorCount()); // variable is a class
					else
						varSize = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount()) ; // variable is an array

					properlyDeclaredVar->address = properlyDeclaredVar->address + m_scopeHeararchy.top()->address;
					properlyDeclaredVar->alias = properlyDeclaredVar->type + "_"  + intToStr(clas_var->numberOfInstancecCreated) +"_" +  properlyDeclaredVar->name;

					if(varSize > 0){
						declar<<properlyDeclaredVar->alias<<endl;
						declar<<"res "<< varSize <<endl;
						NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + varSize;
						if(varSize % 4 != 0)
							declar<<"align"<<endl;
					}else					
						declar<<properlyDeclaredVar->alias<<" dw 0"<<endl;
					NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;


				}else{
					// declar a variable //1111111111111111111111111111111111111111111111111111111111
					int memorySize = properlyDeclaredVar->computeMemorySize(m_GlobalScop, getErrorCount());
					if(memorySize > 4){
						declar<<properlyDeclaredVar->alias<<endl;
						declar<<"res "<< memorySize<<endl;
						NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + memorySize;
						if(memorySize % 4 != 0)
							declar<<"align"<<endl;
					}else{
						declar<<properlyDeclaredVar->alias<<" dw 0"<<endl;
						NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
					}
				}
			}else {

				stringstream str;
				str<< "SEMERR#11:	Multiply declared identifier on the line# "<< var->objectLineNumber<<": " << var->name  <<endl;
				outputSemErr(str.str());

			}



		}
	} //else cout<<"variable is null"<<endl;

	if(var->type != "int" && var->type != "float"){

		if(m_GlobalScop->search(var->type) == NULL)
		{
			{
				stringstream str;
				str<<"SEMERR#12:	Undefined identifier on line# "<< var->objectLineNumber<<" : "<< var->type<< endl;
				outputSemErr(str.str());
			}

		}
	}

	m_acumulater.pop(); // remove <;>

}

void syntaxAnalizer::insert_class_action_B(){
	if(m_acumulater.empty())
		return;
	if(m_scopeHeararchy.empty()) return;
	ClassVar* newClass = new ClassVar(m_acumulater.top()->m_lexem);
	newClass->objectLineNumber = m_acumulater.top()->m_location;
	m_currentSemanticStack.push(newClass);
	if(m_GlobalScop->search(m_acumulater.top()->m_lexem) != NULL){
		//cout<<" Multiply declared identifier  on the line	"<<m_acumulater.top()->m_location<<": " <<  m_acumulater.top()->m_lexem <<endl;
		m_numberOfSemanticErrors++;
		newClass->isDeclaredProperly = false;
	}
	else {
		newClass->obgect_type = "class";
		newClass->alias = "class_" + m_scopeHeararchy.top()->alias + "_" + newClass->name;
		m_GlobalScop->insert(m_acumulater.top()->m_lexem , newClass);
		newClass->alias = m_GlobalScop->alias + "_" + newClass->name; //###########################
		//declar<<newClass->alias<<" dw 0"<<endl;
		newClass->pointer_to_variable = 0;
		newClass->isDeclaredProperly = true;
		newClass->marked_undefined = false;

	}
	m_acumulater.pop();

}

void syntaxAnalizer::insert_class_action_B2(){
	if(m_acumulater.empty())
		return;
	if(m_scopeHeararchy.empty()) return;
	ClassVar* newClass =dynamic_cast<ClassVar*>( m_GlobalScop->search(m_acumulater.top()->m_lexem));
	newClass->objectLineNumber = m_acumulater.top()->m_location;

	if(newClass != NULL){
		if(newClass->isAlreadyDeclared == false){
			newClass->isAlreadyDeclared = true;
			newClass->pointer_to_variable = 0;

			declar<<newClass->alias<<endl; // declar class

			m_currentSemanticStack.push(newClass);

		}else {
			{
				stringstream str;
				str<<"SEMERR#11:	Multiply declared identifier  on the line "<<m_acumulater.top()->m_location<<": " <<  m_acumulater.top()->m_lexem <<endl;
				outputSemErr(str.str());
			}

			m_currentSemanticStack.push(newClass->clone());
			m_currentSemanticStack.top()->isDeclaredProperly = false;
			//newClass->isDeclaredProperly = false;
		}
	}else 
		cout << "Class Name is empety" <<endl;
	m_acumulater.pop();

}

void syntaxAnalizer::insertNewDimention_action_DIM(){
	if(m_acumulater.empty())
		return;
	if(m_scopeHeararchy.empty()) return;
	if(m_acumulater.empty()) return;
	m_acumulater.pop(); // remove <]>
	int index = atoi(m_acumulater.top()->m_lexem.c_str()); // get index value
	m_acumulater.pop(); // remove dimention value
	m_acumulater.pop(); // remove <[> 
	SimpleVar* var = m_currentSemanticStack.top();  //m_scopeHeararchy.top()->search(m_acumulater.top()->m_lexem);
	if( var != NULL)
		if(var->dimention_list != NULL)
			var->dimention_list->push_back(index);
	var->obgect_type = "array_Variable";
	var->expressionType = "array";

}

void syntaxAnalizer::cretaeRecord_action_V(Token* typeToken, Token* id){

	string name = id->m_lexem;
	//Token* token = m_acumulater.top(); // keep name of the variable
	bool undefined = false;
	string type = typeToken->m_lexem;

	if(typeToken->m_lexemCode == "ID"){
		undefined = true;
	}
	SimpleVar* simpleVar = new SimpleVar(name, type); 
	simpleVar->obgect_type = "simple_variable";
	simpleVar->isFunctionParam = false;
	simpleVar->objectLineNumber = id->m_location;
	simpleVar->marked_undefined = undefined;
	m_currentSemanticStack.push(simpleVar);
}



SimpleVar* syntaxAnalizer::search_scopeHeararchy(string objectName){
	SimpleVar* var = NULL;
	deque <SimpleVar*> copyStack;

	//	if(m_scopeHeararchy.empty()) return;

	if(!m_scopeHeararchy.empty() && m_scopeHeararchy.top()->isDeclaredProperly){
		var = m_scopeHeararchy.top()->search(objectName);
		if(var == NULL){
			while(var == NULL && !m_scopeHeararchy.empty()){ // look for a variable 
				if(m_scopeHeararchy.top()->isDeclaredProperly) {
					var = m_scopeHeararchy.top()->search(objectName);

				}
				else {
					var = new SimpleVar(objectName, "error_type");
					var->isDeclaredProperly = false;
					break;
				}	
				copyStack.push_back(m_scopeHeararchy.top());
				m_scopeHeararchy.pop();
			}
			if( !m_scopeHeararchy.empty()){
				copyStack.push_back(m_scopeHeararchy.top());
				m_scopeHeararchy.pop();
			}
			while(! copyStack.empty()){
				m_scopeHeararchy.push(copyStack.back());
				copyStack.pop_back();
			}
		}
	}else{
		var = new SimpleVar(objectName, "error_type");
		var->isDeclaredProperly = false;
	}
	return var;
}

void syntaxAnalizer::validateUndefinedParameters()
{
	//m_GlobalScop->cout_();
	//cout<<endl;
	//cout<<endl;
	//cout<<"====================================" <<endl;
	m_GlobalScop->validateUndefined_parameters(m_GlobalScop);
	//m_GlobalScop->cout_();
}


void syntaxAnalizer::isUserDefined_action(){
	if(m_acumulater.empty())
		return;
	if(! m_GlobalScop->search((m_acumulater.top()->m_lexem))){
		{
			stringstream str;
			str<<"SEMERR#12:	Undefined identifier on line# "<<m_currentToken->m_location<<" :"<<m_acumulater.top()->m_lexem;
			outputSemErr(str.str());
		}

	}
}


bool syntaxAnalizer::isSemanticAction1(const string& action){
	return m_semanticActions1.find(action) != m_semanticActions1.end();

}




bool syntaxAnalizer::isSemanticAction2(const string& action){
	return m_semanticActions2.find(action) != m_semanticActions2.end();

}

void syntaxAnalizer::initialize_regStack(){
	for(int i = 13; i>=1; i--){
		string str = "r" + intToStr(i);
		m_regStack.push(str);
	}

	m_temp_alias_index = 0; // initialize to <0> current index for temporari alias variable
}


// generates a new alias for temporary variables
string syntaxAnalizer::generate_Alias(string prefix){
	string newAlias = prefix + "temp" + intToStr(m_temp_alias_index);

	m_temp_alias_index++;
	return newAlias;
}

string syntaxAnalizer::generate_jump_marker(string prefix){
	string marker = prefix + "marker_" + intToStr(jump_marker);
	jump_marker++;

	return marker;
}

string syntaxAnalizer::generate_ENDIF_marker(){
	return generate_jump_marker("END_IF_");
}

string syntaxAnalizer::generate_ELSE_marker(){
	return generate_jump_marker("ELSE_IF_");
}



string syntaxAnalizer::muntiplication_(string operator_){
	string returnstr;
	if(operator_  == "*")
		returnstr = "mul ";
	else if(operator_ == "/")
		returnstr = "div ";
	else if(operator_ == "and")
		returnstr = "and ";

	return returnstr;
}

string syntaxAnalizer::addition_(string operator_){
	string returnstr;
	if(operator_  == "+")
		returnstr = "add ";
	else if(operator_ == "-")
		returnstr = "sub ";
	else if(operator_ == "or")
		returnstr = "or ";

	return returnstr;

}


string syntaxAnalizer::relation_(string operator_){
	string returnstr;
	if(operator_  == "<")
		returnstr = "clt ";
	else if(operator_ == "<=")
		returnstr = "cle ";
	else if(operator_ == ">")
		returnstr = "cgt ";
	else if(operator_ == ">=")
		returnstr = "cge ";
	else if(operator_ == "<>")
		returnstr = "cne ";
	else if(operator_ == "==")
		returnstr = "ceq ";

	/*if(operator_  == "<")
	returnstr = "clti ";
	else if(operator_ == "<=")
	returnstr = "clei ";
	else if(operator_ == ">")
	returnstr = "cgti ";
	else if(operator_ == ">=")
	returnstr = "cgei ";
	else if(operator_ == "<>")
	returnstr = "cnei ";
	else if(operator_ == "==")
	returnstr = "ceqi ";
	else
	{
	int i = 0;
	}
	*/

	return returnstr;

}

void syntaxAnalizer::initialize_registerTo_0(string reg){

	asmcode<<"sub "<<reg<<","<<reg<<","<<reg<<endl;  
	m_regStack.push(reg);

}   

void syntaxAnalizer::compute_offset_code(SimpleVar* var){

	if( m_scopeHeararchy.empty())
		return;

	//SimpleVar* var = m_currentSemanticStack.top();
	int size = 4;
	if(!var->runtime_exp_list.empty()){
		if(m_regStack.empty()) return;
		string reg = m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;
		string reg1 =  m_regStack.top();
		m_regStack.pop();
		if(m_regStack.empty()) return;
		string reg2 =  m_regStack.top();
		m_regStack.pop();

		if(var->type != "int" && var->type != "float"){
			ClassVar* cl_var;
			if((cl_var = dynamic_cast<ClassVar* >(m_GlobalScop->search(var->type))) != NULL)
				size = cl_var->computeMemorySize(m_GlobalScop, getErrorCount());
		}

		list<pair<int,SimpleVar*>>:: iterator it = var->runtime_exp_list.begin();

		asmcode<<"% compute array offset"<<endl;
		asmcode<<"lw "<<reg<<","<<it->second->alias<<"(r0)"<<endl;
		++it;
		for(; it != var->runtime_exp_list.end(); ++it){

			asmcode<<"muli "<<reg1<<","<<reg<<","<<it->first<<endl;
			asmcode<<"lw "<< reg2<<","<<it->second->alias<<"(r0)"<<endl;
			asmcode<<"add "<<reg<<","<< reg1<<","<< reg2<<endl;

		}

		asmcode<<"muli "<<reg<<","<<reg<<","<<size<<endl;  // final value is in <reg>

		if(var->runtime_offset == "0"){
			string newAlias = generate_Alias();
			declar<<newAlias<<"  dw 0"<<endl;
			FunctionVar* hs_top = dynamic_cast<FunctionVar*>(m_scopeHeararchy.top());
			if( hs_top != NULL) hs_top->runtimeParameterList.push_back(pair<string,int>(newAlias, 4));

			NUMBER_OF_BYTS_USED = NUMBER_OF_BYTS_USED + 4;
			asmcode<<"sw "<<newAlias<<"(r0)"<<","<< reg<<endl;  
			var->runtime_offset = newAlias;
		}else{

			asmcode<<"lw "<<reg1<<","<<var->runtime_offset<<"(r0)"<<endl;
			asmcode<<"add "<<reg<<","<<reg<<","<<reg1<<endl;
			asmcode<<"sw "<<var->runtime_offset<<"(r0)"<<","<<reg<<endl;

		}


		initialize_registerTo_0(reg);
		initialize_registerTo_0(reg1);
		initialize_registerTo_0(reg2);
	}

}

void syntaxAnalizer::memoryCopy(string from_alias, string from_pointer_reg, string into_alias, string into_pointer_reg ,int memoryAmount){

	if(m_regStack.empty()) return;
	string exchange = m_regStack.top();
	m_regStack.pop();

	asmcode<<"% copy memory from "<< from_alias<<" to "<< into_alias <<": "<< memoryAmount << endl;
	//	asmcode<<"addi "<<from_pointer_reg<<","<<"r0 "<<","<<from_pointer<<endl;
	//	asmcode<<"addi "<<into_pointer_reg<<","<<"r0 "<<","<<into_pointer<<endl;

	for(int i = 0; i < memoryAmount/4; i++){


		asmcode<<"lw "<<exchange<<","<<from_alias<<"("<<from_pointer_reg<<")"<<endl;
		asmcode<<"sw "<<into_alias<<"("<<into_pointer_reg<<")"<<","<<exchange<<endl;
		asmcode<< "addi "<<from_pointer_reg<<","<<from_pointer_reg<<","<<"4"<<endl;
		asmcode<< "addi "<<into_pointer_reg<<","<<into_pointer_reg<<","<<"4"<<endl;

	}
	asmcode<<"% END: copy memory from "<< from_alias<<" to "<< into_alias <<": "<< memoryAmount << endl;
	//initialize_registerTo_0(from_pointer_reg);
	//	initialize_registerTo_0(into_pointer_reg);
	initialize_registerTo_0(exchange);
}


void syntaxAnalizer:: memCopy_(){


	// r1 - from_alias
	//r2 -from_pointer_reg
	//r3- into_alias
	//r4 - into_pointer_reg
	//r5- memory_reg
	// r6 -  exchange


	asmcode<<"MEMORY_COPY"<<endl;
	asmcode<<"% copy memory from "<< "r1"<<" to "<< "r3" <<": "<< "r5" << endl;
	asmcode<<"add r3, r3, r4"<<endl;
	asmcode<<"add r1, r1, r2"<<endl;
	asmcode<<"BEGIN_MEMORY_COPY_MARKER"<<endl;
	asmcode<<"bz "<< "r5"<<","<<"END_MEMORY_COPY_MARKER"<<endl;
	asmcode<<"lw "<<"r6"<<","<<"0(r1)"<<endl;
	asmcode<<"sw "<<"0(r3)"<<","<<"r6"<<endl;
	asmcode<< "addi "<<"r3"<<","<<"r3"<<","<<"4"<<endl;
	asmcode<< "addi "<<"r1"<<","<<"r1"<<","<<"4"<<endl;
	asmcode<<"subi "<<"r5"<<","<<"r5"<<","<<"4"<<endl;
	asmcode<<"j "<<"BEGIN_MEMORY_COPY_MARKER"<<endl;
	asmcode<<"END_MEMORY_COPY_MARKER" <<endl;
	asmcode<<"% END: copy memory from "<< "r1"<<" to "<< "r3" <<": "<< "r5" << endl;
	asmcode<<"jr r15"<<endl;
	asmcode<<"MEMORY_COPY_REGISTRY_STORE res 28"<<endl;

}



void syntaxAnalizer::memoryCopy_byRegister(string from_alias, string from_pointer_reg, string into_alias, string into_pointer_reg ,string memory_reg){


	// r1 - from_alias
	//r2 -from_pointer_reg
	//r3- into_alias
	//r4 - into_pointer_reg
	//r5- memory_reg
	// r6 -  exchange

	storeRegistries();
	asmcode<<"addi "<< "r1"<<","<<"r0"<<","<<from_alias<<endl;
	asmcode<<"add "<< "r2"<<","<<"r0"<<","<<from_pointer_reg<<endl;
	asmcode<<"addi "<< "r3"<<","<<"r0"<<","<<into_alias<<endl;
	asmcode<<"add "<< "r4"<<","<<"r0"<<","<<into_pointer_reg<<endl;
	asmcode<<"add "<< "r5"<<","<<"r0"<<","<<memory_reg<<endl;


	asmcode<<"jl "<< "r15"<<","<<"MEMORY_COPY"<<endl;

	restoreRegistries();

}




bool syntaxAnalizer::compare_array_dimention_list(list<int>* functionParam, list<int>* passParam ){ ///@@@@@@@@@@@@@@@@@@@@
	bool returnvalue = true;
	if(functionParam->size() != passParam->size())
		return false;

	list<int>::iterator it_funcParam = functionParam->begin();
	list<int>::iterator it_passParam = passParam->begin();
	for(; it_funcParam != functionParam->end(); ++ it_funcParam ){
		if((*it_funcParam) != (*it_passParam))
			return false;
		++it_passParam;
		//	if( it_passParam == passParam->end())
		//	return false;
	}
	return returnvalue;
}


void syntaxAnalizer::EMPTY_SEMANTIC_STACKS(){
	while(!m_currentSemanticStack.empty())  // empty current semantic stack
		m_currentSemanticStack.pop();
	while(! m_acumulater.empty())
		m_acumulater.pop();
	while(!m_regStack.empty())
		m_regStack.pop();
	initialize_regStack();
}

void syntaxAnalizer::get_()
{
	asmcode<<"% Read an integer."<<endl;
	asmcode<<"% Exit: R1 contains value of integer read."<<endl;
	asmcode<<"% Uses: r14, r2, r3, r4."<<endl;
	asmcode<<"% Link: r15."<<endl;
	asmcode<<""<<endl;
	asmcode<<"getint   add    r14,r0,r0         % n := 0 (result)"<<endl;
	asmcode<<"         add    r2,r0,r0         % c := 0 (character)"<<endl;
	asmcode<<"         add    r3,r0,r0         % s := 0 (sign)"<<endl;
	asmcode<<"getint1  getc   r2               % read c"<<endl;
	asmcode<<"         ceqi   r4,r2,32"<<endl;
	asmcode<<"         bnz    r4,getint1       % skip blanks"<<endl;
	asmcode<<"         ceqi   r4,r2,43"<<endl;
	asmcode<<"         bnz    r4,getint2       % branch if c is '+'"<<endl;
	asmcode<<"         ceqi   r4,r2,45"<<endl;
	asmcode<<"         bz     r4,getint3       % branch if c is not '-'"<<endl;
	asmcode<<"         addi   r3,r0,1          % s := 1 (number is negative)"<<endl;
	asmcode<<"getint2  getc   r2               % read c"<<endl;
	asmcode<<"getint3  ceqi   r4,r2,10"<<endl;
	asmcode<<"         bnz    r4,getint5       % branch if c is \n"<<endl;
	asmcode<<"         cgei   r4,r2,48"<<endl;
	asmcode<<"         bz     r4,getint4       % c < 0"<<endl;
	asmcode<<"         clei   r4,r2,57"<<endl;
	asmcode<<"         bz     r4,getint4       % c > 9"<<endl;
	asmcode<<"         muli   r14,r14,10         % n := 10 * n"<<endl;
	asmcode<<"         add    r14,r14,r2         % n := n + c"<<endl;
	asmcode<<"         subi   r14,r14,48         % n := n - '0'"<<endl;
	asmcode<<"         j      getint2"<<endl;
	asmcode<<"getint4  addi   r2,r0,63         % c := '?'"<<endl;
	asmcode<<"         putc   r2               % write c"<<endl;
	asmcode<<"         j      getint           % Try again"<<endl;
	asmcode<<"getint5  bz     r3,getint6       % branch if s = 0 (number is positive)"<<endl;
	asmcode<<"         sub    r14,r0,r14         % n := -n"<<endl;
	asmcode<<"getint6  jr     r15              % return"<<endl;
}

void syntaxAnalizer::put_(){

	if(m_regStack.empty()) return;
	string r2 = m_regStack.top();
	m_regStack.pop();
	if(m_regStack.empty()) return;

	string r3 = m_regStack.top();
	m_regStack.pop();
	if(m_regStack.empty()) return;

	string r4 = m_regStack.top();
	m_regStack.pop();
	if(m_regStack.empty()) return;

	string r5 = m_regStack.top();
	m_regStack.pop();

	asmcode<<"putint   add    "<<r2<<",r0,r0         % c := 0 (character)"<<endl;
	asmcode<<"         add    "<<r3<<",r0,r0         % s := 0 (sign)"<<endl;
	asmcode<<"         addi   "<<r4<<",r0,endbuf     % p is the buffer pointer"<<endl;
	asmcode<<"         cge    "<<r5<<",r14,r0"<<endl;
	asmcode<<"         bnz    "<<r5<<",putint1       % branch if n >= 0"<<endl;
	asmcode<<"         addi   "<<r3<<",r0,1          % s := 1"<<endl;
	asmcode<<"         sub    r14,r0,r14         % n := -n"<<endl;
	asmcode<<"putint1  modi   "<<r2<<",r14,10         % c := n mod 10"<<endl;
	asmcode<<"         addi   "<<r2<<","<<r2<<",48         % c := c + '0'"<<endl;
	asmcode<<"         subi   "<<r4<<","<<r4<<",1          % p := p - 1"<<endl;
	asmcode<<"         sb     0("<<r4<<"),"<<r2<<"         % buf[p] := c"<<endl;
	asmcode<<"         divi   r14,r14,10         % n := n div 10"<<endl;
	asmcode<<"         bnz    r14,putint1       % do next digit"<<endl;
	asmcode<<"         bz     "<<r3<<",putint2       % branch if n >= 0"<<endl;
	asmcode<<"         addi   "<<r2<<",r0,45         % c := '-'"<<endl;
	asmcode<<"         subi   "<<r4<<","<<r4<<",1          % p := p - 1"<<endl;
	asmcode<<"         sb     0("<<r4<<"),"<<r2<<"         % buf[p] := c"<<endl;
	asmcode<<"putint2  lb     "<<r2<<",0("<<r4<<")         % c := buf[p]"<<endl;
	asmcode<<"         putc   "<<r2<<"               % write c"<<endl;
	asmcode<<"         addi   "<<r4<<","<<r4<<",1          % p := p + 1"<<endl;
	asmcode<<"         cgei   "<<r5<<","<<r4<<",endbuf"<<endl;
	asmcode<<"         bz     "<<r5<<",putint2       % branch if more digits"<<endl;
	asmcode<<"		lb "<<r2<< ","<<"cr(r0)"<<"			%load carage return character code into a register => ADDED BY VIKA"<<endl; 
	asmcode<<"         putc   "<<r2<<endl;
	asmcode<<"         jr     r15              % return"<<endl;
	asmcode<<"         res    20               % digit buffer"<<endl;
	asmcode<<"endbuf"<<endl;
	asmcode<< "cr db 10 "<< "		%declar a carage return code   ADDED BY VIKA"<<endl;
	asmcode<< "align"<<endl;
	initialize_registerTo_0(r2);
	initialize_registerTo_0(r3);
	initialize_registerTo_0(r4);
	initialize_registerTo_0(r5);


}


void syntaxAnalizer::getPutReal_()
{
	asmcode<<"% Read an fixed poaint."<<endl;
	asmcode<<"% Exit: r14 contains value of fixed point"<<endl;
	asmcode<<"% Uses: r1, r2, r3, r4"<<endl;
	asmcode<<"% Link: r15."<<endl;
	asmcode<<"align"<<endl;
	asmcode<<"readreal"<<endl;
	asmcode<<"         % Store registers"<<endl;
	asmcode<<"         addi  r14, r0, readrealstack"<<endl;
	asmcode<<"         sw    0(r14), r1"<<endl;
	asmcode<<"         sw    4(r14), r2"<<endl;
	asmcode<<"         sw    8(r14), r3"<<endl;
	asmcode<<"         sw    12(r14), r4"<<endl;
	asmcode<<""<<endl;
	asmcode<<"         % Load values"<<endl;
	asmcode<<"         add   r13,r0,r0           % n := 0 (result)"<<endl;
	asmcode<<"         add   r1,r0,r0            % c := 0 (character)"<<endl;
	asmcode<<"         add   r2,r0,r0            % s := 0 (sign)"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal1  "<<endl;
	asmcode<<"         getc  r1                % read c"<<endl;
	asmcode<<"         ceqi  r3,r1,32"<<endl;
	asmcode<<"         bnz   r3,readreal1      % skip blanks"<<endl;
	asmcode<<"         ceqi  r3,r1,43"<<endl;
	asmcode<<"         bnz   r3,readreal2      % branch if c is '+'"<<endl;
	asmcode<<"         ceqi  r3,r1,45"<<endl;
	asmcode<<"         bz    r3,readreal3      % branch if c is not '-'"<<endl;
	asmcode<<"         addi  r2,r0,1           % s := 1 (number is negative)"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal2  "<<endl;
	asmcode<<"         getc  r1                % read c"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal3  "<<endl;
	asmcode<<"         ceqi  r3,r1,10"<<endl;
	asmcode<<"         bnz   r3,readreal8      % branch if c is \n"<<endl;
	asmcode<<"         ceqi  r3,r1,46          % branch if dot"<<endl;
	asmcode<<"         bnz   r3,readreal5      "<<endl;
	asmcode<<""<<endl;
	asmcode<<"         cgei  r3,r1,48"<<endl;
	asmcode<<"         bz    r3,readreal4      % c < 0"<<endl;
	asmcode<<"         clei  r3,r1,57"<<endl;
	asmcode<<"         bz    r3,readreal4      % c > 9"<<endl;
	asmcode<<"         muli  r13,r13,10        % n := 10 * n"<<endl;
	asmcode<<"         add   r13,r13,r1        % n := n + c"<<endl;
	asmcode<<"         subi  r13,r13,48        % n := n - '0'"<<endl;
	asmcode<<"         j     readreal2"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal4  "<<endl;
	asmcode<<"         addi  r1,r0,63          % c := '?'"<<endl;
	asmcode<<"         putc  r1                % write c"<<endl;
	asmcode<<"         j     readreal          % Try again"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal5"<<endl;
	asmcode<<"         addi  r4, r0, 2048"<<endl;
	asmcode<<"         mul   r13, r13, r4"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal6"<<endl;
	asmcode<<"         getc  r1                % read c"<<endl;
	asmcode<<"         ceqi  r3,r1,10"<<endl;
	asmcode<<"         bnz   r3,readreal9      % branch if c is \n "<<endl;
	asmcode<<""<<endl;
	asmcode<<"         cgei  r3,r1,48"<<endl;
	asmcode<<"         bz    r3,readreal7      % c < 0"<<endl;
	asmcode<<"         clei  r3,r1,57"<<endl;
	asmcode<<"         bz    r3,readreal7      % c > 9"<<endl;
	asmcode<<"         subi  r3, r1 ,48"<<endl;
	asmcode<<"         mul   r3, r3, r4"<<endl;
	asmcode<<"         divi  r3, r3, 10"<<endl;
	asmcode<<"         add   r13,r13,r3"<<endl;
	asmcode<<"         divi  r4, r4, 10"<<endl;
	asmcode<<"         j     readreal6"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal7  "<<endl;
	asmcode<<"         addi  r1,r0,63          % c := '?'"<<endl;
	asmcode<<"         putc  r1                % write c"<<endl;
	asmcode<<"         j     readreal6         % Try again"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal8  "<<endl;
	asmcode<<"         addi  r4, r0, 2048"<<endl;
	asmcode<<"         mul   r13, r13, r4"<<endl;
	asmcode<<"readreal9  "<<endl;
	asmcode<<"         bz    r2,readreal10     % branch if s = 0 (number is positive)"<<endl;
	asmcode<<"         sub   r13,r0,r13        % n := -n"<<endl;
	asmcode<<""<<endl;
	asmcode<<"readreal10"<<endl;
	asmcode<<"         % Restore registers"<<endl;
	asmcode<<"         lw    r1, 0(r14)"<<endl;
	asmcode<<"         lw    r2, 4(r14)"<<endl;
	asmcode<<"         lw    r3, 8(r14)"<<endl;
	asmcode<<"         lw    r4, 12(r14)"<<endl;
	asmcode<<"         add   r14, r0, r13"<<endl;
	asmcode<<""<<endl;
	asmcode<<"         jr    r15               % return"<<endl;
	asmcode<<"readrealstack res 24"<<endl;
	asmcode<<""<<endl;
	asmcode<<""<<endl;
	asmcode<<""<<endl;
	asmcode<<""<<endl;
	asmcode<<"% Write an fixed point to the output file."<<endl;
	asmcode<<"% Entry: r14 fixed point value"<<endl;
	asmcode<<"% Uses: r1,r2,r3,r4,r5"<<endl;
	asmcode<<"% Link: r15"<<endl;
	asmcode<<""<<endl;
	asmcode<<"writereal"<<endl;
	asmcode<<"      % Save registers"<<endl;
	asmcode<<"       % Load real value"<<endl;
	asmcode<<"       add    r1, r0, r14                  % Load value to r1"<<endl;
	asmcode<<"       addi   r14, r0, readrealstack"<<endl;
	asmcode<<"       sw     4(r14), r1"<<endl;
	asmcode<<"       sw     8(r14), r2"<<endl;
	asmcode<<"       sw     12(r14), r3"<<endl;
	asmcode<<"       sw     16(r14), r4"<<endl;
	asmcode<<"       sw     20(r14), r5"<<endl;
	asmcode<<""<<endl;
	asmcode<<""<<endl;
	asmcode<<""<<endl;
	asmcode<<"       add    r3,r0,r0                   % s := 0 (sign)"<<endl;
	asmcode<<"       addi   r4,r0,writereal_endbuffer  % p is the buffer pointer"<<endl;
	asmcode<<"       cge    r5,r1,r0"<<endl;
	asmcode<<"       bnz    r5,writereal1              % branch if n >= 0"<<endl;
	asmcode<<"       addi   r3,r0, 1                   % s := 1"<<endl;
	asmcode<<"       sub    r1,r0,r1                   % n := -n"<<endl;
	asmcode<<""<<endl;
	asmcode<<"writereal1       "<<endl;
	asmcode<<"       addi   r2,r0,2048 "<<endl;
	asmcode<<"       divi   r2,r2,200"<<endl;
	asmcode<<"       add    r1,r1,r2 %Round"<<endl;
	asmcode<<"       sw     0(r14),r1"<<endl;
	asmcode<<"       add    r2,r0,r0                   % c := 0 (character)"<<endl;
	asmcode<<"       divi   r1,r1,2048             % Get integer part"<<endl;
	asmcode<<""<<endl;
	asmcode<<"writereal2  modi   r2,r1,10              % c := n mod 10"<<endl;
	asmcode<<"       addi   r2,r2,48                   % c := c + '0'"<<endl;
	asmcode<<"       subi   r4,r4,1                    % p := p - 1"<<endl;
	asmcode<<"       sb     0(r4),r2                   % buf[p] := c"<<endl;
	asmcode<<"       divi   r1,r1,10                   % n := n div 10"<<endl;
	asmcode<<"       bnz    r1,writereal2              % do next digit"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       %      sign"<<endl;
	asmcode<<"       bz     r3,writereal3              % branch if n >= 0"<<endl;
	asmcode<<"       addi   r2,r0,45                   % c := '-'"<<endl;
	asmcode<<"       subi   r4,r4,1                    % p := p - 1"<<endl;
	asmcode<<"       sb     0(r4),r2                   % buf[p] := c"<<endl;
	asmcode<<""<<endl;
	asmcode<<"writereal3  "<<endl;
	asmcode<<"       lb     r2,0(r4)                   % c := buf[p]"<<endl;
	asmcode<<"       putc   r2                         % write c"<<endl;
	asmcode<<"       addi   r4,r4,1                    % p := p + 1"<<endl;
	asmcode<<"       cgei   r5,r4,writereal_endbuffer"<<endl;
	asmcode<<"       bz     r5,writereal3              % branch if more digits"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       % Fractions"<<endl;
	asmcode<<"       lw     r1,0(r14)                 % Load value to r1"<<endl;
	asmcode<<"       addi   r2, r0, 46                 % dot"<<endl;
	asmcode<<"       putc   r2"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       andi   r1,r1, 2047"<<endl;
	asmcode<<"       muli   r1,r1, 10"<<endl;
	asmcode<<"       divi   r3,r1, 2048"<<endl;
	asmcode<<"       addi   r2,r3, 48                    % c := c + '0'"<<endl;
	asmcode<<"       putc   r2"<<endl;
	asmcode<<"       muli   r3,r3, 2048"<<endl;
	asmcode<<"       sub    r1,r1, r3"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       muli   r1,r1, 10"<<endl;
	asmcode<<"       divi   r3,r1, 2048"<<endl;
	asmcode<<"       addi   r2,r3,48                    % c := c + '0'"<<endl;
	asmcode<<"       putc   r2"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       % New line"<<endl;
	asmcode<<"       addi   r1, r0, 13"<<endl;
	asmcode<<"       putc   r1"<<endl;
	asmcode<<"       addi   r1, r0, 10"<<endl;
	asmcode<<"       putc   r1"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       % Restore registers"<<endl;
	asmcode<<"       lw     r1, 4(r14) "<<endl;
	asmcode<<"       lw     r2, 8(r14)"<<endl;
	asmcode<<"       lw     r3, 12(r14)"<<endl;
	asmcode<<"       lw     r4, 16(r14)"<<endl;
	asmcode<<"       lw     r5, 20(r14)"<<endl;
	asmcode<<""<<endl;
	asmcode<<"       jr     r15                         % return"<<endl;
	asmcode<<"       res    32                          % digit buffer"<<endl;
	asmcode<<"writereal_endbuffer"<<endl;
}