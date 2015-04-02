#pragma once



using namespace std;
class TransitionTableRecord
{
public:
	TransitionTableRecord(void);
	~TransitionTableRecord(void);
	
	void search();
	TransitionTableRecord(vector<string>& data);
	void insertRecord(string,string);
	void outputData();
	int searchTransmissionTable(const string& searchKey);
	bool get_isFinalState();
	int get_backtrack();
	string get_status();
	//Token nextToken();


private:
	map<string, string> m_state; //keeps <character,state> pair that showes what should be the next state
	bool m_isFinalState;			// whether it is the final state or not
	int m_backtrack;			//number of simbols needed to be backtrucked. It could be 0 or more
	string m_status;

};

