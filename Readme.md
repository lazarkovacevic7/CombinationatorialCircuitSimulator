## Synopsis

This project represents simulator for digital combinatorial circuits. Simulator is of discrete event type. Posible signal values in simulator are 0 and 1. It has number of built-in circuit elements - digital gates, digital sources and probes. This set can be extended with new types.

- gates {AND, OR, NOT, NOR, NAND}
- sources {arbitrary source, impuls source, clock signal source}
- digital probe

Circuit to be simulated (and some simulation settings) is defined in specific input file. Format of input file is defined below. Simulator reads input file and starts simulation. Simulation can be time confined or it runs until no new events are generated. The outcome of simulation is list of {signal transition time (in miliseconds from begining of simulation), signal change type (0->1 or 1->0)} for each probe in circuit. Simulation outcome can be printed to stdout or into output file.

## Building&Running

    $ make
    $ bin/main path-to-input-file [path-to-output folder]

## Tests

Purpose of tests is to prove that simulator works correctly for 10 configurations. Tests are created&simulated using pspice and based on results golden output files are created. To pass tests simulator needs to create same files as golden output files.

To run tests:

    $ scripts/run_tests.sh -run

## Input file (EBNF notation)
```
InputFile = SimulationTime NumberOfElements ElementList Connections Sources.
SimulationTime = ( TimeInUs |  SimbolForSimulationRunTillNoMoreChangesInCircuit ) Newline.
NumberOfElements = PositiveInteger Newline.
ElementList = { ElementDescription Newline } 1 .
ElementDescription = ID ElementType.
ID = PositiveInteger.
Connections = { ConnectionDescription Newline } 1 .
ConnectionDescription = ID OutputPin ID InputPin.
OutputPin = PositiveInteger.
InputPin = PositiveInteger.
Sources = { SourceID SourceDescription Newline }.
SourceDescription = ( ImpulsSourceDescription | ArbitrarySourceDescription | ClockSourceDescription ).
SourceID = ID.
ImpulsSourceDescription = "1" ImpulsValue FrequencyInHerz ImpulsDuration.
ArbitrarySourceDescription = "2" SignalChangesOfArbitraryDigitalSource "-1".
ClockSourceDescription = "3" FrequencyInHerz.
SignalChangesOfArbitraryDigitalSource = InitalValueOfArbitraryDigitalSource TimeOfChangeArbitraryDigitalSource.
InitalValueOfArbitraryDigitalSource = BinaryValue.
ImpulsValue = BinaryValue.
ImpulsDuration = TimeInUs.
TimeOfChangeArbitraryDigitalSource = { TimeInUs }.
TimeInUs =  NonNegativeInteger.
SimbolForSimulationRunTillNoMoreChangesInCircuit = "0".
FrequencyInHerz = PositiveInteger.
ElementType = ( AND | OR | NOT | NAND | NOR | Source | Probe ).
AND = "1"  NumberOfInputPins.
OR = "2".
NOT = "3".
NAND = "4"  NumberOfInputPins.
NOR = "0"  NumberOfInputPins.
NumberOfInputPins = ( "2" | "3" ).
Source = "5".
Probe = "6".
NonNegativeInteger = Zero | PositiveInteger.
PositiveInteger = digit { digit | zero }.
digit = ("1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ).
BinaryValue = ( "0" | "1" ).
zero = "0".
Newline = "\n".
```

