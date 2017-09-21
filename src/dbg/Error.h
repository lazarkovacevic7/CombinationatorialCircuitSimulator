#ifndef _ERROR_
#define _ERROR_

#include <string>

using namespace std;

// Error handling class

class Error
{

public:

	static Error* Instance();		// singleton

	std::string getError(int lineNum);

};

#endif