//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : AND.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#include "AND.h"

void AND::process()
{
	if (getInPinVal(0) == 0 || getInPinVal(1) == 0)
		setOutPinValDemo(0);
	else
		setOutPinValDemo(1);
}

AND::AND() :
		DigitalGate(0.017, 0.012)// delay 0->1 and delay 1->0 are set in constructor initializater
{

}

void AND::acceptVisitor(Visitor* v)
{
	v->visitAndGate(this);
}
