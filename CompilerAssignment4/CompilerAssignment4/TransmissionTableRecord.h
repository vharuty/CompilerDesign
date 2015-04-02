#pragma once
#include <string.h>
#include <string>
#include <map>
#include <vector>
#include "userDefinesTypes.h"

using namespace std;
class TransmissionTableRecord
{
public:
	TransmissionTableRecord(void);
	~TransmissionTableRecord(void);
	
	void search();
	TransmissionTableRecord(vector<string>& data);
	void insertRecord(string,string);
	void outputData();
	int searchTransmissionTable(string searchKey);
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

