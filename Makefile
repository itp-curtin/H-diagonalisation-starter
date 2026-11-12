
FC = gfortran
CFLAGS = -g -O0 -fcheck=all -fbacktrace -ffpe-trap=invalid,zero,overflow

build/main: build build/rsg.o build/main.o 
	$(FC) $(CFLAGS) build/rsg.o build/main.o -o build/main

build/rsg.o: src/rsg.f
	$(FC) $(CFLAGS) -c src/rsg.f -o build/rsg.o

build/main.o: src/main.f90
	$(FC) $(CFLAGS) -c src/main.f90 -o build/main.o

build:
	mkdir -p build

clean:
	rm -rf build
