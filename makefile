_DEPS = functions.h
_OBJ = main.o functions.o 


CC=g++
CFLAGS=-I$(IDIR)

SRCDIR=./src
IDIR =./include

ODIR=./obj
LDIR =./lib

LIBS=-lm

DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: $(SRCDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

program: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 

setup:
	mkdir include lib src obj
