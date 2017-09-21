//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Gate.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_GATE_H)
#define _GATE_H

#include "../gates/AND.h"
#include "../gates/OR.h"
#include "../gates/NAND.h"
#include "../gates/NOR.h"
#include "../gates/NOT.h"
#include "../model/Model.h"
#include "Element.h"

// dummy class for gate generation. TODO: is this unavoidable? TODO: change name.
class Gate : public Element
{
public:

	Gate();
	Gate(ID, Type);		
	~Gate();

	void spawnThisElmenet();		// redefinition

};

#endif  //_GATE_H