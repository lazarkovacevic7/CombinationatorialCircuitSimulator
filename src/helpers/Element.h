//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Element.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_ELEMENT_H)
#define _ELEMENT_H

#include "../model/typedefs.h"

// dummy element. Can be everything that is described in input file TODO: difference with ModelElement? Is this needed?
class Element
{
public:

	virtual ~Element();			

	ID getId();
	void setID(ID);

	Type getType();

	virtual void spawnThisElmenet()=0;		// used for polymorphism creation of circuit real elements
protected:

	Element(Type, ID);

	Element();

private:

	Type type;		// element type. See spec

	ID id;			// element id
};

#endif  //_ELEMENT_H