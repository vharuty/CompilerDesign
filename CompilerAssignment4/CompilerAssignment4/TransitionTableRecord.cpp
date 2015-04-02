#include "stdafx.h"
#include "TransitionTableRecord.h"
#include <iostream>

TransitionTableRecord::TransitionTableRecord(void)
{
	m_status = "";
}


TransitionTableRecord::~TransitionTableRecord(void)
{
	
}

TransitionTableRecord::TransitionTableRecord(vector<string>& data){
	
	m_state.insert(pair<string, string>(data.at(1),data.at(2)));
	string tmp = "yes";
	if(data.at(3).compare(tmp) == 0){
		m_isFinalState = true;
		m_status = data.at(5);
	}
	else{
		m_isFinalState = false;
		m_status = "";
		}
		m_backtrack =  atoi(data.at(4).c_str());
	
	
}

void TransitionTableRecord::insertRecord(string key, string value){
	m_state.insert(pair<string,string>(key,value));
}

void TransitionTableRecord::outputData(){
	  map<string,string>::iterator it;
	  for(it = m_state.begin();it != m_state.end(); ++it){
		  cout<< it->first<<" "<<it->second<<" "<<m_isFinalState<<" "<<m_backtrack;
	 
  }
}

int TransitionTableRecord::searchTransmissionTable(const string& keyString){
	string st;
	int state;
	st = keyString;
	map<string, string>::iterator mit = m_state.find(st);
	if(mit != m_state.end()){
		state = atoi(mit->second.c_str());
	}
	else{
		st = "other";
		//m_state.find(st)!= m_state.end()
		state = atoi(m_state[st].c_str());
		//cout<<"exception";
	}
	return state;
}

bool TransitionTableRecord::get_isFinalState(){
	return m_isFinalState;
}

	int TransitionTableRecord::get_backtrack(){
	return m_backtrack;
	}

	string TransitionTableRecord::get_status(){
		return m_status;
	}