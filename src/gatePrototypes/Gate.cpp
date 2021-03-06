//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Gate.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#include "Gate.h"

Gate::Gate() :
		Element()
{

}

Gate::Gate(ID i, Type t) :
		Element(t, i)
{

}

Gate::~Gate()
{

}

// TODO: should this be wrapped to a design pattern?

void Gate::createConcreteElement()
{
	if (Element::getType() == TypeAndGate)
	{
		AND* a = new AND();
		a->setId(Element::getId());
		Model::Instance()->add(a);
	}
	if (Element::getType() == TypeNandGate)
	{
		NAND* a = new NAND();
		a->setId(Element::getId());
		Model::Instance()->add(a);
	}
	if (Element::getType() == TypeNotGate)
	{
		NOT* a = new NOT();
		a->setId(Element::getId());
		Model::Instance()->add(a);
	}
	if (Element::getType() == TypeOrGate)
	{
		OR* a = new OR();
		a->setId(Element::getId());
		Model::Instance()->add(a);
	}
	if (Element::getType() == TypeNorGate)
	{
		NOR* a = new NOR();
		a->setId(Element::getId());
		Model::Instance()->add(a);
	}

}
