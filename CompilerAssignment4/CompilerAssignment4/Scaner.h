#pragma once

#include "LexicalAnalizer.h"
class Scaner
{
public:
	Scaner(void);
	~Scaner(void);
	void processScanning(string file);

private:
	LexicalAnalizer m_lexicalAnalizer;

};

