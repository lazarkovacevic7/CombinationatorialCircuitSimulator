#include <iostream>
#include "model/Model.h"
#include "model/ModelElement.h"
#include "model/Reader.h"
#include "model/Builder.h"
#include "visitor/Visitor.h"
#include "visitor/VisSimReporter.h"
#include "visitor/visStatistics.h"

using namespace std;

int main(int argc, char* argv[])
{

	// read input file and create model
	Reader::Instance()->readData(argv[1], argv[2]);
	Builder::Instance()->buildModel(Reader::Instance()->getData());

	// simulate
	Time simTime = Reader::Instance()->getData()->getSimTime();
	while (Scheduler::Instance()->processNow()
			&& Scheduler::Instance()->getCurTime() < simTime)
		;

	// report simulation results
	VisSimReporter* v1 = new VisSimReporter();
	Model::Instance()->acceptVisitor(v1);
	delete v1;

	// write simulation statistics
	visStatistics* v2 = new visStatistics();
	Model::Instance()->acceptVisitor(v2);
	v2->writeStats();
	delete v2;

	return 0;

}
