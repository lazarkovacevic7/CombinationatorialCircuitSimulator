//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : CLKSource.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "CLKSource.h"

CLKSource::CLKSource()
:	Source(), frequency(0)

{

}

void CLKSource::setFrequency(Frequency f)
{
	frequency=f;
}

Frequency CLKSource::getFrequency()
{
	return frequency;
}

CLKSource::~CLKSource()
{

}

void CLKSource::createConcreteElement()
{
	ClockSource* s = new ClockSource(frequency);
	s->setId(Element::getId());
	Model::Instance()->add(s);

	Time firstEvent = 1.0/(2*frequency)*1000000;
	Reader::Instance()->getData()->setTOFE(firstEvent);
}
