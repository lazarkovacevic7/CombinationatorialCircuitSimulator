//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit  Analyzer
//  @ File Name : visStatistics.cpp
//  @ Date : 28.5.2013
//  @ Author : Lazar Kovacevic
//
//

#include "visStatistics.h"

using namespace std;

visStatistics::visStatistics() :
		ANDnum(0), NANDnum(0), NORnum(0), ORnum(0), NOTnum(0), ASourceNum(0), ClkSourceNum(
				0), ISourceNum(0), probeNum(0)
{

}

void visStatistics::visitDigitalProbe(DigitalProbe* dp)
{
	probeNum++;

	ID idM = dp->getId();
	string descrM = "probe";

	ID* idT = 0;
	string descrT = "probe has no output pins";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ dp->source->getId() };
	string descrS = "input of probe is connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, 0, 1));

}

void visStatistics::visitAndGate(AND* gate)
{
	ANDnum++;

	ID idM = gate->getId();
	string descrM = "AND gate";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = gate->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = gate->target[i]->getId();
	string descrT = "Output pins are connected to";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ gate->source[0]->getId(), gate->source[1]->getId() };
	string descrS = "Input pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 2));
}

void visStatistics::visitNandGate(NAND* gate)
{
	NANDnum++;

	ID idM = gate->getId();
	string descrM = "NAND gate";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = gate->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = gate->target[i]->getId();
	string descrT = "Output pins are connected to";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ gate->source[0]->getId(), gate->source[1]->getId() };
	string descrS = "Input pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 2));
}

void visStatistics::visitOrGate(OR* gate)
{
	ORnum++;

	ID idM = gate->getId();
	string descrM = "OR gate";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = gate->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = gate->target[i]->getId();
	string descrT = "Output pins are connected to";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ gate->source[0]->getId(), gate->source[1]->getId() };
	string descrS = "Input pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 2));

}

void visStatistics::visitNorGate(NOR* gate)
{
	NORnum++;

	ID idM = gate->getId();
	string descrM = "NOR gate";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = gate->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = gate->target[i]->getId();
	string descrT = "Output pins are connected to";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ gate->source[0]->getId(), gate->source[1]->getId() };
	string descrS = "Input pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 2));
}

void visStatistics::visitNotGate(NOT* gate)
{
	NOTnum++;

	ID idM = gate->getId();
	string descrM = "NOT gate";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = gate->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = gate->target[i]->getId();
	string descrT = "Output pins are connected to";

	ID idS[MAXNUMOFSOURCEIDS] =
	{ gate->source[0]->getId() };
	string descrS = "Input pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 1));
}

void visStatistics::visitASource(ArbitrarySource* source)
{
	ASourceNum++;

	ID idM = source->getId();
	string descrM = "Manual source";

	ID* idS = 0;
	string descrS = "Source doesn't have input pins";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = source->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = source->target[i]->getId();
	string descrT = "Output pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 0));

}

void visStatistics::visitISource(ImpulsSource* source)
{
	ISourceNum++;

	ID idM = source->getId();
	string descrM = "Impuls source";

	ID* idS = 0;
	string descrS = "Source doesn't have input pins";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = source->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = source->target[i]->getId();
	string descrT = "Output pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 0));
}

void visStatistics::visitClkSource(ClockSource* source)
{
	ClkSourceNum++;

	ID idM = source->getId();
	string descrM = "Clock source";

	ID* idS = 0;
	string descrS = "Source doesn't have input pins";

	ID idT[MAXNUMOFTARGETIDS];
	unsigned int numT = source->getNumOfTargets();
	for (unsigned int i = 0; i < numT; i++)
		idT[i] = source->target[i]->getId();
	string descrT = "Output pins are connected to";

	descriptions.push_back(
			StatDescr(descrM, descrT, descrS, idM, idT, idS, numT, 0));
}

void visStatistics::writeStats()
{
	// TODO outpath should be ending with "/" otherwise not working!
	string outPath = Reader::Instance()->getData()->getOutPath();
	string outFileName = outPath + "statistics.log";
	ofstream outFile(outFileName.c_str(), ios::out);

	outFile << "clock sources : " << ClkSourceNum << endl << "impuls sources : "
			<< ISourceNum << endl << "manual sources : " << ASourceNum << endl
			<< "AND gates : " << ANDnum << endl << "OR gates : " << ORnum
			<< endl << "N0T gates : " << NOTnum << endl << "NAND gates : "
			<< NANDnum << endl << "NOR gates : " << NORnum << endl
			<< "probes : " << probeNum << endl;

	for (unsigned int i = 0; i < descriptions.size(); i++)
	{
		outFile << "________________________________________" << endl
				<< "----------------------------------------" << endl << "id "
				<< descriptions[i].idMain << ", " << descriptions[i].descrMain
				<< endl << "----------------------------------------" << endl
				<< descriptions[i].descr2 << ' ';

		for (unsigned int j = 0; j < descriptions[i].getNumT(); j++)
		{
			outFile << descriptions[i].targets[j];
			if (j == (descriptions[i].getNumT() - 1))
				break;
			outFile << ", ";
		}

		outFile << endl << descriptions[i].descr3 << ' ';

		for (unsigned int j = 0; j < descriptions[i].getNumS(); j++)
		{
			outFile << descriptions[i].sources[j];
			if (j == (descriptions[i].getNumS() - 1))
				break;
			outFile << ", ";
		}

		outFile << endl << "________________________________________" << endl
				<< "***" << endl << "***" << endl;
	}
	outFile.close();
}
