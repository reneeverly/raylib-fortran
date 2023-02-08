set -v

gfortran -c raylib.f08 -fno-range-check

gfortran -o bin/core_input_keys test/core_input_keys.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
gfortran -o bin/core_input_mouse test/core_input_mouse.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
gfortran -o bin/core_input_mouse_wheel test/core_input_mouse_wheel.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
gfortran -o bin/core_3d_camera_mode test/core_3d_camera_mode.f08 raylib.o `pkg-config --libs --cflags raylib` -fno-range-check
