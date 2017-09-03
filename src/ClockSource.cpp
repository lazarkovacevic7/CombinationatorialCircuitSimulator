//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ClockSource.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "ClockSource.h"

ClockSource::ClockSource(ID i, Frequency f)
:	DigitalSource(), frequency(f)
{
	ModelElement::setId(i);
	Model::Instance()->add(this);
	turnOn();
	
	Time firstEvent = 1.0/(2*frequency)*1000000;
	Reader::Instance()->getData()->setTOFE(firstEvent);
}

Frequency ClockSource::getFrequency()
{
	return frequency;
}

void ClockSource::acceptVisitor(Visitor* v)
{
	v->visitClkSource(this);
}

ClockSource::~ClockSource()
{

}

void ClockSource::notify(Description descr)
{	
	process();
	Time t = 1.0/(2*frequency)*1000000 + Scheduler::Instance()->getCurTime();
	
	if(descr==FallingEdge)
		Event::create(this, t, ModelElement::getId(), RisingEdge);
	else
		Event::create(this, t, ModelElement::getId(), FallingEdge);
}

void ClockSource::turnOn()					
{
	changeOutPinVal();
	Time t=0;	
	Event::create(this, t, ModelElement::getId(), FallingEdge);	
}
