#include "StatDescr.h"

StatDescr::StatDescr(string desM, string desT, string desS, ID idM, ID idT[], ID idS[], unsigned int T_size, unsigned int S_size):
		descrMain(desM),
	 	idMain(idM),
	 	descr2(desT),
	 	descr3(desS),
		numT(0),
	 	numS(0)

	{
		for(unsigned int i=0; i<T_size;i++)
			targets[numT++]=idT[i];

		for(unsigned int i=0; i<S_size;i++)
			sources[numS++]=idS[i];
	}

unsigned int StatDescr::getNumT()
{
	return numT;
}

ID StatDescr::getNumS()
{
	return numS;
}
