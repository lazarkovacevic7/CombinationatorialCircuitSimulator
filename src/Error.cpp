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

	ifstream errorFile("C:\\errors.txt", ios::in);
		
	if(!errorFile.is_open())
	{
		cout	<<"Nemoguce pronaci fajl sa porukama o greskama. Moguce da program nije pravilno izvrsen."
				<<endl
				<<"Fajl sa greskama je potrebno postaviti na C:\\errors.txt !"
				<<endl;
	}
		
	char* buffer = new char[__MAXLENGTH];

	for(int i=1; ;i++)
	{

		if(errorFile.eof()) break;

		errorFile.getline(buffer, __MAXLENGTH);

		string message = string(buffer);

		message = message.substr(2, message.length()-2);

		message = "GRESKA: "+ message;

		if(i==lineNum) 
			return message;		

	}

	delete buffer;
	errorFile.close();
	return "\nTekst greske nije nadjen.";
};
