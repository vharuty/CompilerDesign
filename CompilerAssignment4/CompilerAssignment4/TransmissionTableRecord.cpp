#include "stdafx.h"
#include "TransmissionTableRecord.h"
#include <iostream>

TransmissionTableRecord::TransmissionTableRecord(void)
{
	m_status = "";
}


TransmissionTableRecord::~TransmissionTableRecord(void)
{
	
}

TransmissionTableRecord::TransmissionTableRecord(vector<string>& data){
	
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

void TransmissionTableRecord::insertRecord(string key, string value){
	m_state.insert(pair<string,string>(key,value));
}

void TransmissionTableRecord::outputData(){
	  map<string,string>::iterator it;
	  for(it = m_state.begin();it != m_state.end(); ++it){
		  cout<< it->first<<" "<<it->second<<" "<<m_isFinalState<<" "<<m_backtrack;
	 
  }
}

int TransmissionTableRecord::searchTransmissionTable(string keyString){
	string st;
	int state;
	st = keyString;
	if(m_state.find(st)!= m_state.end()){
		state = atoi(m_state[st].c_str());
	}
	else{
		st = "other";
		//m_state.find(st)!= m_state.end()
		state = atoi(m_state[st].c_str());
		//cout<<"exception";
	}
	return state;
}

bool TransmissionTableRecord::get_isFinalState(){
	return m_isFinalState;
}

	int TransmissionTableRecord::get_backtrack(){
	return m_backtrack;
	}

	string TransmissionTableRecord::get_status(){
		return m_status;
	}