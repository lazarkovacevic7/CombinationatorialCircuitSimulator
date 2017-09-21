//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : DigitalGate.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "DigitalGate.h"

DigitalGate::~DigitalGate()
{

}

void DigitalGate::acceptSignal()
{
	static bool first = true;

	if(first)
	{
		SignalValue oldOutPinVal = outPinValDemo;		//outPinValDemo je sledeca vrednost koju bi kolo trebalo da dobije ako signal ne bude glic				
		readInputPins();		//citanje pinova
		process();				//postavlja se 'outPinValDemo'
		if(inputsShortened())		//ako su ulazi kratkospojeni postavlja se flag					
			first=false;
	
		if(oldOutPinVal==0 && outPinValDemo==1)
			Event::create(this, Scheduler::Instance()->getCurTime() + delay0to1 + DELTA, ModelElement::getId(), RisingEdge); 

		else if(oldOutPinVal==1 && outPinValDemo==0)
			Event::create(this,Scheduler::Instance()->getCurTime() + delay1to0 + DELTA, ModelElement::getId(), FallingEdge);

		else if(oldOutPinVal==-1 && outPinValDemo==1)
			Event::create(this,Scheduler::Instance()->getCurTime(), ModelElement::getId(), RisingEdge);			//prva propagacija signala dogadja se bez kasnjenja

		else if(oldOutPinVal==-1 && outPinValDemo==0)
			Event::create(this,Scheduler::Instance()->getCurTime(), ModelElement::getId(), FallingEdge);		//prva propagacija signala dogadja se bez kasnjenja		

	}

	else
		first=true;	
}

void DigitalGate::notify(Description descr)			//obavestava se kolo da je kasnjenje proslo i izlazi kola se postavljaju na odg. vrednosti
													//ako je promena okarakterisana kao glic, do obavestenja nece doci (filtriranje gliceva u Scheduler-u)
{
	if(descr==FallingEdge)
		outPinVal=0;
	else
		outPinVal=1;

	for(unsigned int i=0; i<numOfTargets; i++)
		target[i]->acceptSignal();		//dalja propagacija signala
}

DigitalGate::DigitalGate(Time d0to1, Time d1to0):
	ModelElement(),
	numOfTargets(0),
	delay0to1(d0to1),
	delay1to0(d1to0),
	outPinValDemo(-1),
	outPinVal(-1)


{
	source[0]=0;
	source[1]=0;
}

void DigitalGate::setTarget(ModelElement* t)
{
	target[numOfTargets]=t;
	numOfTargets++;
}

void DigitalGate::setSource(ModelElement* s)
{
	if(source[0]==0)
		source[0]=s;
	else if(source[1]==0)
		source[1]=s;
}

SignalValue DigitalGate::getOutPinVal()
{
	return outPinVal;
}

SignalValue DigitalGate::getOutPinValDemo()
{
	return outPinValDemo;
}

void DigitalGate::setOutPinValDemo(SignalValue s)
{
	outPinValDemo=s;
}

SignalValue DigitalGate::getInPinVal(unsigned int i)
{
	return inPinVal[i];
}

void DigitalGate::setInPinVal(unsigned int i, SignalValue val)
{
	inPinVal[i]=val;
}

void DigitalGate::readInputPins()
{
	inPinVal[0]=source[0]->getOutPinVal();
	inPinVal[1]=source[1]->getOutPinVal();
}

Time DigitalGate::getDelay1to0()
{
	return delay1to0;
}

Time DigitalGate::getDelay0to1()
{
	return delay0to1;
}

bool DigitalGate::inputsShortened()
{
	if(source[0]==source[1])
		return true;
	else
		return false;
}

unsigned int DigitalGate::getNumOfTargets()
{
	return numOfTargets;
}