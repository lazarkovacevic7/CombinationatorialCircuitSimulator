//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : ModelElement.cpp
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//

#include "ModelElement.h"

ModelElement::ModelElement() :
		id(0)
{

}

void ModelElement::setId(ID Id)
{
	id = Id;
}

ID ModelElement::getId()
{
	return id;
}

ModelElement::~ModelElement()
{

}
