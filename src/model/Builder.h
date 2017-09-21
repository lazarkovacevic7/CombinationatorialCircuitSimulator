//
//
//  Generated by StarUML(tm) C++ Add-In
//
//  @ Project : Digital Circuit Analyzer
//  @ File Name : Builder.h
//  @ Date : 7.4.2013
//  @ Author : Lazar Kovacevic
//
//


#if !defined(_BUILDER_H)
#define _BUILDER_H

#include "Data.h"
#include "Model.h"

// Builds model based on Data class instance
class Builder
{
public:

	~Builder();

	void buildModel(Data* data);	

	static Builder* Instance();		// singleton

protected:

	// TODO: move to cpp?
	Builder()
	{

	}

	void link(ID, unsigned int, ID, unsigned int );		// links model elements based on IDs. TODO: search for improvement

};

#endif  //_BUILDER_H
