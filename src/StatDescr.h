//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit  Analyzer
//  @ File Name : StatDescr.h
//  @ Date : 28.5.2013
//  @ Author : Lazar Kovacevic
//
//

#if !defined(_STATDESCR_H)
#define _STATDESCR_H

#include <string>
#include "TYPEDEFINITIONS.h"

const ID MAXNUMOFTARGETIDS = 50;
const ID MAXNUMOFSOURCEIDS = 2;

using namespace std;

//pomocna klasa za ispisivanje statistike na kraju simulacije, koju koristi visStatistics klasa
class StatDescr
{
public:
		
	StatDescr(string, string , string, ID, ID[], ID[], unsigned int, unsigned int);

	//Ovi atributi predstavljaju stringove i ID-jeve koji ce se ispisivati u statistici
	string descrMain;
	ID idMain;

	string descr2;
	ID targets[MAXNUMOFTARGETIDS];

	string descr3;
	ID sources[MAXNUMOFSOURCEIDS];

	unsigned int getNumT();
	unsigned int getNumS();

private:
	//broj meta i izvora kola
	unsigned int numT;
	unsigned int numS;

};

#endif  //_STATDESCR_H
