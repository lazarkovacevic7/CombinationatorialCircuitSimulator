//definicija tipova
#ifndef _Types_h
#define _Types_h

typedef double Time;				//vreme je double
typedef unsigned int ID;				//ID je poz. ceo broj
typedef unsigned int Frequency;			//frekvencija je pozitivan ceo broj
typedef	unsigned int Type;			//tip moze biti broj od 1 do 5, pa je uzeto da bude poz. ceo broj

typedef int SignalValue;			//vrednost signala moze biti 1 ili 0. Uzeto je da bude int zbog nedefinisanog stanja koje je predstavljeno sa -1
typedef enum {RisingEdge, FallingEdge} Description;				//kako postoje samo 2 logicka nivoa, postoje samo dogadjaji sa uzlaznom i silaznom ivicom

#endif