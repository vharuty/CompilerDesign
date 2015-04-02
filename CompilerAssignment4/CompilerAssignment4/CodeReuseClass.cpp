#include "stdafx.h"
#include "CodeReuseClass.h"


CodeReuseClass::CodeReuseClass(void)
{
}


CodeReuseClass::~CodeReuseClass(void)
{
}


bool CodeReuseClass::fileExists(string fileName)
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

void CodeReuseClass::spliter(string inputValue, vector<string>& result, char delimiter) {
	stringstream stream(inputValue);
	string item;
	//reads from a stream, writes into item, $ indicates end of line(separeter)
	while (getline(stream, item, delimiter)) {
		//ads item into a given vector
		result.push_back(item);
	}

}

