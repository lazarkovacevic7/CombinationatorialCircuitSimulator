//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ClockSource.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_CLOCKSOURCE_H)
#define _CLOCKSOURCE_H

#include "DigitalSource.h"
#include "../scheduler/Event.h"
#include "../model/Model.h"

// clock source
class ClockSource: public DigitalSource
{
public:

	ClockSource(Frequency);
	~ClockSource();

	void notify(Description);			// redefinition	
	void acceptVisitor(Visitor*);		// visitor

	Frequency getFrequency();

protected:

	void turnOn();			// redefinition

private:

	Frequency frequency;
};

#endif  //_CLOCKSOURCE_H