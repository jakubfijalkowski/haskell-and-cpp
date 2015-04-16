CXX      ?= g++
AR       ?= ar
CXXFLAGS ?= -Wall -std=c++11 -fPIC

all: lib/libext.a

lib:
	mkdir lib

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

lib/libext.a: lib lib.o capi.o
	$(AR) rcvs $@ lib.o capi.o

clean:
	rm -rf lib
	rm -f lib.o
	rm -f capi.o

.PHONY: all clean
