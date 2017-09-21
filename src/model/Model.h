//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Model.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_MODEL_H)
#define _MODEL_H

#include <vector>
#include "ModelElement.h"
#include "../visitor/Visitor.h"

using namespace std;

// simulation model
class Model
{
public:

	~Model();

	static Model* Instance();		// singleton

	void acceptVisitor(Visitor*);		// visitor

	void add(ModelElement*);
	vector<ModelElement*> getElements();

	void clearModel();

	ModelElement* findElement(ID);			// find element based on id

protected:

	Model();

private:

	vector<ModelElement*> elements;
};

#endif  //_MODEL_H