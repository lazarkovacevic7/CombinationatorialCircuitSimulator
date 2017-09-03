#ifndef _ERROR_
#define _ERROR_
#include <string>

using namespace std;

//klasa za greske
//getError metoda cita gresku iz fajla sa porukama o greskama na osnovu broja linije u fajlu
class Error
{

public:

	static Error* Instance();		//singleton

	string getError(int lineNum);

};

#endif