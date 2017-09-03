//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ASource.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "ASource.h"

ASource::ASource()
:	Source(), initialValue(0), numberOfChanges(0)
{

}

void ASource::setInitialVal(SignalValue iVal)
{
	initialValue=iVal;
}

SignalValue ASource::getInitialVal()
{
	return initialValue;
}

void ASource::setMomOfChange(Time moment)
{
	momentsOfChange[numberOfChanges]=moment;
	numberOfChanges++;
}

Time* ASource::getMomsOfChange()
{
	return momentsOfChange;
}

unsigned int ASource::getNumOfChanges()
{
	return numberOfChanges;
}

ASource::~ASource()
{
	
}

void ASource::spawnThisElmenet()
{
	ArbitrarySource* s = new ArbitrarySource(Element::getId(), initialValue, momentsOfChange, numberOfChanges);	
}


