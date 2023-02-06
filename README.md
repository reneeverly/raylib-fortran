# raylib-fortran
Raylib bindings for Fortran '08

Very much a WIP - currently only runs the hello world app.  More to come!

## Hello World Sample App

```fortran
program test
   use :: raylib
   implicit none

   integer, parameter :: screenWidth = 800
   integer, parameter :: screenHeight = 450

   call InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window")

   call SetTargetFPS(60)

   do
      if (WindowShouldClose()) then
         exit
      end if

      call BeginDrawing()

      call ClearBackground(RAYWHITE)

      call DrawText("Congrats!  You created your first window in Fortran!", 150, 200, 20, LIGHTGRAY)

      call EndDrawing()
   end do

   call CloseWindow()
end program
```
