#ifndef _Types_h
#define _Types_h

typedef double Time;
typedef unsigned int ID;
typedef unsigned int Frequency;
typedef unsigned int Type;
typedef int SignalValue;			// signal value is 1, 0 and -1 as undefined

// event description
typedef enum
{
	RisingEdge, FallingEdge
} Description;

// circuit element types
typedef enum
{
	TypeNorGate = 0,
	TypeAndGate,
	TypeOrGate,
	TypeNotGate,
	TypeNandGate,
	TypeSource,
	TypeProbe
} GateTypes;
typedef enum
{
	TypeImpulsSource = 1, TypeArbitrarySource, TypeClkSource
} SourceTypes;

#endif
