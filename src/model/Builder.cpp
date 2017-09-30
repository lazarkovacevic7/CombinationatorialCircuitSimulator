//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Builder.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#include "Builder.h"

Builder::~Builder()
{

}

Builder::Builder()
{

}

Builder* Builder::Instance() {

	static Builder instance;
	return &instance;
}

void Builder::buildModel(Data* data)
{
	// spawn elements
	for(unsigned int i=0; i<data->getNumberOfElements();i++)		
		data->getElements()[i]->createConcreteElement();

	//link elements
	for(unsigned int i=0; i<data->getConnDescr().size(); i++)		
	{

		ID id1 = data->getConnDescr()[i]->idX;
		ID id2 = data->getConnDescr()[i]->idY;
		unsigned int pin1 = data->getConnDescr()[i]->pinX;
		unsigned int pin2 = data->getConnDescr()[i]->pinY;

		link(id1, pin1, id2, pin2);
	}


}



void Builder::link(ID id1, unsigned int pin1, ID id2, unsigned int pin2)

{
	for(unsigned int i=0; i<Model::Instance()->getElements().size(); i++)
	{

		if(Model::Instance()->getElements()[i]->getId()==id1)
			
			Model::Instance()->getElements()[i]->setTarget(Model::Instance()->findElement(id2));
		

		if(Model::Instance()->getElements()[i]->getId()==id2)

		
			Model::Instance()->getElements()[i]->setSource(Model::Instance()->findElement(id1));
		
	}

}

