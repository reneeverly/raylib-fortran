! Adapted from core_input_keys.c
! Copyright (c) 2014-2023 Ramon Santamaria
program core_input_keys
   use :: raylib
   implicit none

   integer, parameter :: screenWidth = 800
   integer, parameter :: screenHeight = 450

   integer :: boxPositionY
   integer :: scrollSpeed

   call InitWindow(screenWidth, screenHeight, "raylib [core] example - input mouse wheel")

   boxPositionY = screenHeight / 2 - 40
   scrollSpeed = 4

   call SetTargetFPS(60)

   do while (.not. WindowShouldClose())

      boxPositionY = boxPositionY - (getMouseWheelMove() * scrollSpeed)

      call BeginDrawing()

         call ClearBackground(RAYWHITE)

         call DrawRectangle(screenWidth / 2 - 40, boxPositionY, 80, 80, MAROON)

         call DrawText("Use mouse wheel to move the cube up and down!"//achar(0), 10, 10, 20, GRAY)
         call DrawText("Box position Y: "&
            //achar(iachar('0')+mod(boxPositionY/100,10))//achar(iachar('0')+mod(boxPositionY/10,10))&
            //achar(iachar('0')+mod(boxPositionY,10))//achar(0), 10, 40, 20, LIGHTGRAY)

      call EndDrawing()
   end do

   call CloseWindow()
end program
