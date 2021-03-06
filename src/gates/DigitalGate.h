//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : DigitalGate.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_DIGITALGATE_H)
#define _DIGITALGATE_H

#define GATE_MAXNUMOFTARGETS 50		
#define GATE_MAXNUMOFSOURCES 2

#include "../model/ModelElement.h"
#include "../scheduler/Scheduler.h"

const Time DELTA = 0.000001;	// delta time. Used to simulate order of events

class DigitalGate: public ModelElement
{
public:

	virtual ~DigitalGate();

	virtual void notify(Description);			// redefinition	

	void acceptSignal();			// redefinition					

	void setTarget(ModelElement*);		// redefinition
	void setSource(ModelElement*);		// redefinition

	SignalValue getOutPinVal();			// read out pin
	SignalValue getOutPinValDemo();	// read out pin demo TODO: is this unavoidable?
	void setOutPinValDemo(SignalValue);	// set out pin demo TODO: is this unavoidable?
	SignalValue getInPinVal(unsigned int);		// read in pin value
	void setInPinVal(unsigned int, SignalValue);		// set in pin value

	ModelElement* target[GATE_MAXNUMOFTARGETS];			// targets of this gate
	ModelElement* source[GATE_MAXNUMOFSOURCES];			// sources of this gate

	// get delays of gate
	Time getDelay0to1();
	Time getDelay1to0();

	unsigned int getNumOfTargets();			// get num of targets

protected:

	DigitalGate(Time, Time);	// constructor, inputs are delays 0->1 and 1->0

	virtual void process() = 0;			// define gate logic

	virtual void readInputPins();		// read input pins	
	virtual bool inputsShortened();	// are inputs shortcircuit? TODO: is this unavoidable?

private:

	unsigned int numOfTargets;

	// gate delays
	Time delay0to1;
	Time delay1to0;

	SignalValue outPinValDemo;// demo value needed for glitch calclulations TODO: is this unavoidable?

	SignalValue outPinVal;			// real value on out
	SignalValue inPinVal[GATE_MAXNUMOFSOURCES];		// real value on inputs

};

#endif  //_DIGITALGATE_H