#pragma once




using namespace std;
class LexicalAnalizer
{
public:
	LexicalAnalizer(void);
	~LexicalAnalizer(void);
	Token* nextToken(ifstream& file);
	void fillTransitionTable();
	void fillCode();
	void fillReservedWords();
	void outputData();
	void scan(string file);
	void backupChar(ifstream& file,int numberOfChar, char lastReadCharacter);
	int m_line;

private:
	map<int,TransitionTableRecord> m_transmissionTable;
	map<string,PairCodeRecord> m_code;
	vector<string> m_reservedWords;
	//Token endOfFileToken;
	int m_numberOfTokenLine;
	int m_lastNewLinePosition;
	
	
	bool fileExists(string fileName);
	//string nextChar();
	//vector<string> split(string &s, char delim);
	void spliter(string inputValue, vector<string>& result, char delimiter);
	PairCodeRecord searchCode(string lexem);
	void resizeLexem(string* lexem, int nuberOfChara);
	string nextChar(char filCharacter);
	bool isEscapeCharacters(char ch);
	//string returnErrorMessage( pair<int,int> state);
	bool isPartOfCommentComment(string& lexem, char ch);
	string eofChecking(string lexem);
	void outputIntoFile(const Token*, ofstream& errorFile);
	Token* TokenFactoryMethod(string tokenClass,  string lexem, string lexemCode, int line, PairState finalTransition);	
};

