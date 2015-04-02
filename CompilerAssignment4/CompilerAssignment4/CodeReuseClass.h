#pragma once



class CodeReuseClass
{
public:
	CodeReuseClass(void);
	~CodeReuseClass(void);

	bool CodeReuseClass::fileExists(string fileName);
	void CodeReuseClass::spliter(string inputValue, vector<string>& result, char delimiter) ;
};

