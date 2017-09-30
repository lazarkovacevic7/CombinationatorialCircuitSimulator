//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : NOT.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#include "NOT.h"

void NOT::process()
{
	SignalValue s = (!getInPinVal(0));
	setOutPinValDemo(s);
}

NOT::NOT() :
		DigitalGate(0.012, 0.008)
{

}

void NOT::readInputPins()
{
	setInPinVal(0, DigitalGate::source[0]->getOutPinVal());
}

bool NOT::inputsShortened()
{
	return false; // NOT has 1 input
}

void NOT::acceptVisitor(Visitor* v)
{
	v->visitNotGate(this);
}
