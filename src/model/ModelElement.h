//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ModelElement.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_MODELELEMENT_H)
#define _MODELELEMENT_H

#include "typedefs.h"
#include "../visitor/Visitor.h"

// gate element abstraction
class ModelElement
{
public:

	virtual ~ModelElement();

	virtual void acceptVisitor(Visitor*) = 0;		// visitor
	virtual void acceptSignal() =0;		// method invoked when element accepts signal
										

	virtual void notify(Description) = 0;		// scheduler calls this when it is time for this cirucit to process inputs
												

	virtual void setTarget(ModelElement*) =0;		// set targets for this element
	virtual void setSource(ModelElement*) =0;		// set sources for this element

	virtual SignalValue getOutPinVal() =0;			// reads out pin value

	// get circuit delays
	virtual Time getDelay0to1() =0;					
	virtual Time getDelay1to0() =0;

	void setId(ID Id);
	ID getId();

protected:

	ModelElement();

private:

	ID id;			//ID elementa

};

#endif  //_MODELELEMENT_H