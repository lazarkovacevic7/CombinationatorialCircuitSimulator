#compiler
CC=g++

#compiler options
OPTS=-c -Wall

#source files
SOURCES=$(wildcard *.cc src/*.cpp )
#$(info $$SOURCES is ${SOURCES})

#object files
OBJECTS=$(SOURCES:.cpp=.o)
#$(info $$OBJECTS is ${OBJECTS})

#sdl-config or any other library here. 
#``- ensures that the command between them is executed, and the result is put into LIBS
#LIBS=`sdl-config --cflags --libs`
LIBS = 

#executable filename
EXECUTABLE=Main.run

#Special symbols used:
#$^ - is all the dependencies (in this case =$(OBJECTS) )
#$@ - is the result name (in this case =$(EXECUTABLE) )
# LINK.o = $(CC) $(LDFLAGS) $(TARGET_ARCH)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINK.o) $^ -o $@ $(LIBS)

clean:
	rm $(EXECUTABLE) $(OBJECTS)
