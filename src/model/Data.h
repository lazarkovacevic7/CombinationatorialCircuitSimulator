//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Data.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_DATA_H)
#define _DATA_H
#define MAXNUMOFELEMENTS 100

#include "../helpers/Element.h"
#include "../helpers/Probe.h"
#include "../helpers/Gate.h"
#include "../helpers/Source.h"
#include "ConnectionDescription.h"
#include <string>
#include <vector>

using namespace std;

// keeps data read from connection description file. Contains list of dummy elements based on which real elements will be created polymorphicaly.
// TODO: is this optimized and good?
class Data
{
public:

	Data();
	~Data();

	// get dummy elements
	vector<Element*> getElements();	
	void addElement(Element* e);
	void deleteElement(unsigned int i);

	// get connection description list
	vector<ConnectionDescription*> getConnDescr();	
	void addConnDescr(ConnectionDescription*);

	unsigned int getNumberOfElements();
	void setNumberOfElements(unsigned int num);
	
	// sim time?
	void setSimTime(Time t);			
	Time getSimTime();

	// set and get time of first event TODO: is this ok conceptualy?
	void setTOFE(Time);				
	Time getTOFE();	

	// circuit specification file TODO: why here?
	string getFileName();
	void setFileName(char*);

	// simulation result output path TODO: why here?
	string getOutPath();
	void setOutPath(char*);		
	
		
private:
	//dummy elements
	vector<Element*> elements;

	vector<ConnectionDescription*> connDescr;

	Time simulationTime;

	unsigned int numberOfElements;
	
	// Time of first event not triggered by circuit init TODO: concept ok?
	Time timeOfFirstEvent;		

	string name;		//argv[1]: circuit descr file 
	string outPath;		//argv[2]: output simulation folder
};

#endif  //_DATA_H
