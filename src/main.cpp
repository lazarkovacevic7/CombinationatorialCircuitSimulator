#include <iostream>
#include "Model.h"
#include "ModelElement.h"
#include "Reader.h"
#include "Builder.h"
#include "Visitor.h"
#include "VisSimReporter.h"
#include "visStatistics.h"

using namespace std;


int main(int argc, char* argv[]) {

	//citanje ulaznog fajla i izgradnja modela
	Reader::Instance()->readData(argv[1], argv[2]);
	Builder::Instance()->buildModel(Reader::Instance()->getData());
	
	//simulacija
	Time simTime = Reader::Instance()->getData()->getSimTime();
	while(Scheduler::Instance()->processNow() && Scheduler::Instance()->getCurTime() < simTime);

	//ispis rezultata simulacije
	VisSimReporter* v1 = new VisSimReporter();
	Model::Instance()->acceptVisitor(v1);
	delete v1;

	//ispis statistike
	visStatistics* v2 = new visStatistics();
	Model::Instance()->acceptVisitor(v2);
	v2->writeStats();
	delete v2;


	return 0;

}
