//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : DigitalProbe.cpp
//  @ Date : 8.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "DigitalProbe.h"


DigitalProbe::~DigitalProbe()
{

}

void DigitalProbe::acceptSignal()
{
	lastVal=curVal;
	curVal=source->getOutPinVal();
	process();	
}

void DigitalProbe::process()
{
	if(lastVal!=-1)
	{
		Time t=Scheduler::Instance()->getCurTime();
		Time tofe=Reader::Instance()->getData()->getTOFE();

		if(t > tofe)
		{
			SignalChange s(lastVal, curVal, t);
			addChange(s);
		}
	}
}

DigitalProbe::DigitalProbe():
		ModelElement(),
	 	source(0),
	 	lastVal(-1),
	 	curVal(-1),
	 	delay0to1(0),
	 	delay1to0(0)
{

}

SignalValue DigitalProbe::getOutPinVal()
{
	return 0;
}

Time DigitalProbe::getDelay0to1()
{
	return delay0to1;
}

Time DigitalProbe::getDelay1to0()
{
	return delay1to0;
}

vector<SignalChange> DigitalProbe::getChanges()
{
	return changes;
}

void DigitalProbe::notify(Description)
{

}

void DigitalProbe::acceptVisitor(Visitor* v)
{
	v->visitDigitalProbe(this);
}

void DigitalProbe::setSource(ModelElement* s)
{
	source=s;
}

void DigitalProbe::setTarget(ModelElement* e)
{

}

void DigitalProbe::addChange(SignalChange change)
{
	changes.push_back(change);
}
