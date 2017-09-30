#include "Error.h"
#include <string>
#include <fstream>
#include <iostream>
#define __MAXLENGTH 255

using namespace std;

Error* Error::Instance()
{
	static Error e;
	return &e;
}

string Error::getError(int lineNum)
{
	// TODO this is not good. Make JSON parser of ini file?
	ifstream errorFile("C:\\errors.txt", ios::in);

	if (!errorFile.is_open())
	{
		cout << "Error code file couldn't be open!" << endl;
	}

	char* buffer = new char[__MAXLENGTH];

	for (int i = 1;; i++)
	{

		if (errorFile.eof())
			break;

		errorFile.getline(buffer, __MAXLENGTH);

		string message = string(buffer);

		message = message.substr(2, message.length() - 2);

		message = "ERROR: " + message;

		if (i == lineNum)
			return message;

	}

	delete buffer;
	errorFile.close();
	return "\nError code not found!";
}
;
