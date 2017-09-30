//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : SignalChange.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_SIGNALCHANGE_H)
#define _SIGNALCHANGE_H
#include "typedefs.h"

// used for probe signal change recording
class SignalChange
{
public:

	SignalChange(SignalValue prev, SignalValue next, Time t) :
			prevValue(prev), nextValue(next), timeOfChange(t)
	{

	}

	SignalValue prevValue;
	SignalValue nextValue;

	Time timeOfChange;

};

#endif  //_SIGNALCHANGE_H