//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : NAND.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_NAND_H)
#define _NAND_H

#include "DigitalGate.h"

class NAND: public DigitalGate
{
public:

	NAND();

	void acceptVisitor(Visitor*);		// visitor

protected:

	void process();		// redefiniton
};

#endif  //_NAND_H