//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ImpulsSource.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_IMPULSSOURCE_H)
#define _IMPULSSOURCE_H

#include "DigitalSource.h"
#include "../scheduler/Event.h"
#include "../model/Model.h"
#include "../model/Reader.h"

// impuls source
class ImpulsSource : public DigitalSource
{
public:

	ImpulsSource(ID, Frequency, SignalValue, Time);
	~ImpulsSource();

	void notify(Description);		// redefinition
	void acceptVisitor(Visitor*);	// visitor


	SignalValue getImpulsLeve();
	Frequency getFrequency();
	Time getImpulsTime();

protected:

	void turnOn();					// redefinition

private:

	SignalValue impulsLevel;
	Frequency frequency;
	Time impulsActiveTime;

	bool flag;			// TODO: ????

};

#endif  //_IMPULSSOURCE_H