set -v

gfortran -c raylib.f08 -fno-range-check

gfortran -o bin/core_input_keys test/core_input_keys.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
