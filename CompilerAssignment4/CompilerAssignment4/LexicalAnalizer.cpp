#include "stdafx.h"
#include "LexicalAnalizer.h"


LexicalAnalizer::LexicalAnalizer(void)
{
	m_line = 0;
}


LexicalAnalizer::~LexicalAnalizer(void)
{
}

void LexicalAnalizer::fillTransitionTable(){
	string fileName = TRANSMISSIONTABLENAME;
	
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


				spliter(line, result, '\t');
				//cout<<line<<endl;
				if(result[1] == "\\n")
					result[1] = "\n";
				else if(result[1] == "\\r")
					result[1] = "\r";

				int key = atoi(result.at(0).c_str());
				if(m_transmissionTable.find(key) != m_transmissionTable.end()){
					m_transmissionTable[key].insertRecord(result.at(1), result.at(2));

				}
				else{

					TransitionTableRecord record(result);
					//int value = atoi(myString.c_str()
					m_transmissionTable.insert(std::pair<int, TransitionTableRecord>(atoi(result.at(0).c_str()), record));

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
		cout << endl << endl << "Error: file '"<< fileName << "' does not exist" <<endl;
	}

}

void LexicalAnalizer::fillCode(){

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

void LexicalAnalizer::fillReservedWords(){
	string fileName = RESERVEDWORDSFILENAME;
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
				spliter(line, result,' ');
				m_reservedWords.push_back(result.at(0));
				//cout<<m_code[result.at(0)]<<endl;
				result.clear();

			}
			codeFile.close();
			string ch;

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


bool LexicalAnalizer::fileExists(string fileName)
{



	//string file = "a.txt";
	string filePath = fileName;//ILEPATH + file;
	bool returnValue = true;
	//This will get the file attributes bitlist of the file
	DWORD fileAtt = GetFileAttributesA(filePath.c_str());
	//cout<<filePath.c_str();
	//If an error occurred it will equal to INVALID_FILE_ATTRIBUTES
	if(fileAtt == INVALID_FILE_ATTRIBUTES)
		returnValue = false;

	//FILEPATH + fileName
	return returnValue;

}



void LexicalAnalizer::spliter(string inputValue, vector<string>& result, char delimiter) {
	stringstream stream(inputValue);
	string item;
	//reads from a stream, writes into item, $ indicates end of line(separeter)
	while (getline(stream, item, delimiter)) {
		//ads item into a given vector
		result.push_back(item);
	}

}

void LexicalAnalizer::outputData(){
	cout<<endl;
	map<int,TransitionTableRecord>::iterator it;
	for(it = m_transmissionTable.begin();it != m_transmissionTable.end(); ++it){
		cout<<it->first<<" ";
		it->second.outputData();
	}
}

void LexicalAnalizer::scan(string fileName){


	if(fileExists(fileName))
	{
		Token* token;
		ifstream file(fileName);//file to be scaned
		m_numberOfTokenLine = 0;
		//cout<<endl;
		if (file.is_open())
		{
			m_line = 0;
			m_numberOfTokenLine = 1;
			ofstream errorFile, sourceFileOutput;
			sourceFileOutput.open(SOURCEFILEOUTPUT, ios::ate); //open file to output results
			errorFile.open(ERROROUTPUTFILE, ios::ate);//open file to output errors


			while(file.good())
			{
				token = nextToken(file);


				if(token->m_lexemCode.compare("ESChar") != 0)// if it is not a white space character
				{
					if(dynamic_cast<TokenERROR*>(token) == NULL){//if null token is not error type
						cout << token->m_lexem<<"  "<<token->m_lexemCode<<"  "<<token->m_location<<endl; //output to the screen
						token->outputIntoFile(sourceFileOutput); //output result into an appropriate file
					}
					else{
						cout << token->m_lexem<<"  "<<((TokenERROR*)(token))->m_errorBody<<"  "<<token->m_location<<endl;
						token->outputIntoFile(errorFile);// if it is an error, output error message into an error file
					}

				}
			}
					//TokenFactory factoryObject("EOF","EOF", "$","$" ,m_line+1,PairState (state,nextState));
			new TokenReservedWord("$","EOF",m_line+1);


			errorFile.close();
			sourceFileOutput.close();
		}

	}
	else
	{
		cout << endl << endl << "Error: file '"<< fileName << "' does not exist" <<endl;
	}
}

Token* LexicalAnalizer::nextToken(ifstream& file){

	string lexem = "";
	bool addCharTotoken  =true;
	int state = 0;
	char ch;
	string st;
	int nextState = 0;
	string lexemCode = "";
	bool continueProcessing = true;
	Token* outToken = NULL;

	string searchKey;
	string status;
	bool endOfFile = false;
	int currentLineNumber = m_numberOfTokenLine;
	PairCodeRecord codeClassification;

	if (file.is_open())
	{
		//outToken = new Token("","",1); // creates an empethy token

		while ((file.good()&&continueProcessing))
		{
			//if end of file is reached, change it with an empety simpbol to make processing one more time to output  the token
			if((ch = file.get()) == EOF){ 
				endOfFile = true;
				ch='\n';
			}
			if(ch == '\n') m_line++; 
			//change the value of the new line if it is \n character 
			if(file.tellg() > m_lastNewLinePosition && ch == '\n') {
				m_numberOfTokenLine++;
				m_lastNewLinePosition = file.tellg();
			}

			st = ch;
			addCharTotoken = isPartOfCommentComment(lexem,ch); //if analizer is processing a comment, dont add char into token 


			//if it is a white space character on a  starting state don't add into a token, return token with a white space to start processing again
			if(isEscapeCharacters(ch) && (state == 0)){ 
				outToken = new Token(" ", "ESChar", currentLineNumber, "whiteSpace");
				break;
			}
			if((!file.good()) && (!endOfFile)){
				outToken =  new Token(lexem, lexemCode, currentLineNumber, "");// if something is wrong with the file, outtput the token
				break; 
			}

			//if it is end of file and Analyzer is processing multyline comment => <*\> is missing
			if(endOfFile && ((state == 23) || (state == 25))) //states when scanning comment
				searchKey = "EOF";// type of a search character for Transition table put <EOF>
			else 
				searchKey = nextChar(ch);// returns the type of a character for searching in the transmission table=> non0,0, letter,....
			int backup;// number of characters to backup
			if(m_transmissionTable.find(state) != m_transmissionTable.end()){
				// keep next transition state for that particular character
				nextState = m_transmissionTable[state].searchTransmissionTable(searchKey); //keep next step=> search transmission table based on character, to specify next step

				if(m_transmissionTable[nextState].get_isFinalState()){

					backup = m_transmissionTable[nextState].get_backtrack();
					backupChar(file,backup, ch); // backup file by the number of characters in case of \n,\t,\b => we have to backtrack 1 character as well
					status = m_transmissionTable[nextState].get_status(); //return the status of the lexem that final state returns =>num,id,if,+ ....

					if(backup == 0){
						if(!isEscapeCharacters(ch) && addCharTotoken)// if it is  not white space character
							lexem = lexem + st;		//add character into a token			
					}
					else{
						resizeLexem(&lexem,backup -1); // in case of backup, remove unnessesary character from lexem
					}

					if(status.compare("id") == 0){ //what does final state return => is state
						if((find(m_reservedWords.begin(), m_reservedWords.end(),lexem)!= m_reservedWords.end())) //what we get is a reserved word
							status = lexem;
					} 

					codeClassification =searchCode(status);
					TokenFactory factoryObject(status,codeClassification.classification, lexem, codeClassification.code ,m_line+1,  PairState (state,nextState));
					outToken = factoryObject.getFactoryObject(); // creates outToken of a appropriate type in a TokenFactory
					state = 0;
					continueProcessing = false;

				}else {
					if((!isEscapeCharacters(ch))&& (addCharTotoken ))
						lexem = lexem + st;
					state = nextState;
				}
			}

		} //while is closed

	}
	if(state == 23 || state == 25){ // error case with multyline comment will be considered at this part 
		codeClassification =searchCode(status);
		TokenFactory factoryObject(status,codeClassification.classification, lexem, codeClassification.code ,m_line+1,PairState (state,nextState));

		outToken = factoryObject.getFactoryObject();
	}
	lexem = "";

	return outToken;
}

void	LexicalAnalizer::backupChar(ifstream& file, int numberOfChar,char lastReadCharacter){
	signed int aa;
	if(lastReadCharacter == '\n' ) numberOfChar++;// when backups for '\n' it counts 2 characters
	if(lastReadCharacter == '\n' && m_line > 0 ) m_line--;
	if(numberOfChar > 0){
		aa = 0 - numberOfChar;
		file.seekg(aa, ios::cur);

	}
}


PairCodeRecord LexicalAnalizer::searchCode(string lexem){

	PairCodeRecord code;
	if(m_code.find(lexem)!= m_code.end()){
		code = m_code[lexem];
	}
	else{
		cout<<"exception no search code for " << lexem<<endl;
	}
	return code;
}

// in case of backup, remov already added charcter from lexem

void LexicalAnalizer::resizeLexem(string* lexem, int numberOfChars){
	string ::iterator it;

	int i = lexem->length();
	if(numberOfChars > 0)
		if(numberOfChars <= i)
			lexem->erase (lexem->begin() +i -numberOfChars, lexem->end());

}


//find the type of the next character
string LexicalAnalizer::nextChar(char fileChar){
	string st;
	string returnValue;
	st = fileChar;
	size_t found ;
	string letters("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
	string non0("123456789");
	string el_0("0");
	string operatorPunctuations("+-=<>/;,.[]{}()*_");
	string newLine("\n");
	st = fileChar;

	if((found = letters.find(st)) != std::string::npos){
		returnValue = "letter";
	}
	else{
		if((found = el_0.find(st)) != std::string::npos){
			returnValue = "0";
		}else{

			if((found = non0.find(st)) != std::string::npos){
				returnValue = "non0";
			}
			else{

				if((found = operatorPunctuations.find(st)) != std::string::npos){
					returnValue = st;
				}else{

					/////check new line character
					if (newLine.compare(st) == 0){
						returnValue = st;
					}
					else{
						returnValue = st;
					}
				}

			}
		}
	}

	return returnValue;
}

bool LexicalAnalizer::isEscapeCharacters(char ch){
	bool returnValue = true;
	string st;
	st = ch;
	if((st.compare("\n")!=0)&&(st.compare("\t")!= 0)&&(st.compare("\b") != 0)&&(st.compare("\r") != 0)&&(st.compare(" ") != 0)&&(st.compare("\v") != 0))
		returnValue = false;

	return returnValue;
}


//checks wheteher a new character read from the file should be escaped by lexical analizer or should be analized 
//it is important in case of comments

bool LexicalAnalizer::isPartOfCommentComment(string& lexem, char ch){
	bool returnValue = true;
	string st;
	st = ch;


	//	cout<<endl<<lexem<<endl;
	if((lexem.compare("/*") == 0)&&(st.compare("*")!=0)) //escape if the next char is noy "*"
		returnValue = false;
	else{

		if((lexem.compare("/**") == 0)&&(st.compare("/")!=0)){
			//cout<<endl<<lexem<<"\n"<&lexem;
			resizeLexem(&lexem,1);
			if(st.compare("*")==0) lexem =  lexem + st;

			returnValue = false;
		}
		else{
			if((lexem.compare("//") == 0)&&(st.compare("\n")))
				returnValue = false;
		}
	}
	if(st.compare("\n") == 0) returnValue = false;

	return returnValue;
}

//output result into a file

void LexicalAnalizer::outputIntoFile(const Token* token, ofstream& outputFile ){

	if (outputFile.is_open())
	{
		if(outputFile.good())
		{
			//outputFile<<token->m_lexem<<"\t"<<token->m_lexemCode<<"\t"<<token->m_location<<endl;
		}


	}
}

Token* LexicalAnalizer::TokenFactoryMethod(string tokenClass, string lexem, string lexemCode, int line, PairState finalTransition){
	Token* returnToken = NULL;

	return returnToken;

}