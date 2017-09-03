//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital circuit analyzer
//  @ File Name : Event.cpp
//  @ Date : 20.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "Event.h"


Event::Event(ModelElement* e, Time t, ID i, Description d)
:	target(e),
	time(t),
 	id(i),
 	descr(d),
 	next(0)
{
	Scheduler::Instance()->put(this);
}

void Event::create(ModelElement* e, Time t, ID i, Description d)
{
	new Event(e, t, i, d);
}

ModelElement* Event::getTarget()
{
	return target;
}

Time Event::getTime()
{
	return time;
}

ID Event::getID()
{
	return id;
}

void Event::setID(ID i)
{
	id=i;
}


void Event::setTime(Time t)
{
	time=t;
}

Event* Event::getNext()
{
	return next;
}

void Event::setNext(Event* n)
{
	next=n;
}


Description Event::getDescription()
{
	return descr;
}
