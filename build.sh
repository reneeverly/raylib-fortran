gfortran -c raylib.f08 -fno-range-check
gfortran -o helloworld helloworld.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
