// CompilerAssignment1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Scaner.h"
#include <iostream>
#include <string>
#include "syntaxAnalizer.h"
#include <direct.h>
using namespace std;




void RunMoon()
{
	PROCESS_INFORMATION processInformation;
	STARTUPINFO startupInfo;
	memset(&processInformation, 0, sizeof(processInformation));
	memset(&startupInfo, 0, sizeof(startupInfo));
	startupInfo.cb = sizeof(startupInfo);

	BOOL result;

	char cCurrentPath[FILENAME_MAX];
	_getcwd(cCurrentPath, sizeof(cCurrentPath));

	char cmdline[FILENAME_MAX];

	string exe = string(cCurrentPath) + "\\files\\output\\moon.exe";
	string mpath = exe + " " + string(cCurrentPath) + "\\files\\output\\_test.m";
	_tcscpy_s(cmdline, mpath.c_str());

	result = ::CreateProcess(exe.c_str(), cmdline, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &startupInfo, &processInformation);

	if (result == 0)
	{ 
		wprintf(L"ERROR: CreateProcess failed!");
	}
	else
	{
		WaitForSingleObject( processInformation.hProcess, INFINITE );
		CloseHandle( processInformation.hProcess );
		CloseHandle( processInformation.hThread );
	}
}


int _tmain(int argc, _TCHAR* argv[])
{
	string file;
	if(argc == 1)
	{
		cout << "Enter file name to compile"<<endl;
		getline(cin, file);
	}
	else
		file = argv[1];

	cout<< "creating compiler object..."<<endl;
	syntaxAnalizer s;

	try
	{
		s.pars(file);
	}
	catch(...)
	{
		cout << "fatal error, unable to recover from previous error(s); stopping compilation"<<endl;
	}

	cout<<"Press any key to terminate..."<<endl;
	getchar();


	return 0;
}

