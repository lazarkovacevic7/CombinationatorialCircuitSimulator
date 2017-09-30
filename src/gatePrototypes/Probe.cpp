//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Probe.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

// TODO: Why is this cant be moved to .h
#include "Probe.h"
#include "../probes/DigitalProbe.h"
#include "../model/Model.h"

Probe::~Probe()
{

}

void Probe::createConcreteElement()
{
	DigitalProbe* p = new DigitalProbe();
	p->setId(Element::getId());
	Model::Instance()->add(p);
}

Probe::Probe() :
		Element()
{

}

Probe::Probe(ID i, Type t) :
		Element(t, i)
{

}

