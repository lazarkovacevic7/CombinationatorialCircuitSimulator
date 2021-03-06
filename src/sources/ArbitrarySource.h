//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ArbitrarySource.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_ARBITRARYSOURCE_H)
#define _ARBITRARYSOURCE_H

#define ASOURCE_MAXNUMOFCHANGES 50

#include "DigitalSource.h"
#include "../scheduler//Event.h"
#include "../model/Model.h"

// class for source with manual configuration
class ArbitrarySource: public DigitalSource
{
public:

	ArbitrarySource(SignalValue, Time*, unsigned int);
	~ArbitrarySource();

	void notify(Description);		// redefinition
	void acceptVisitor(Visitor*);	// visitor 

	SignalValue getInitialValue();

	Time getMomOfChange(unsigned int);
	unsigned int getNumOfChanges();

protected:

	void turnOn();		// redefinition

private:

	SignalValue initialValue;

	Time momentsOfChange[ASOURCE_MAXNUMOFCHANGES];
	unsigned int numberOfChanges;

	unsigned int counter;			//counter of signal changes
};

#endif  //_ARBITRARYSOURCE_H