! Adapted from core_input_keys.c
! Copyright (c) 2014-2023 Ramon Santamaria
program core_input_keys
   use :: raylib

   integer, parameter :: screenWidth = 800
   integer, parameter :: screenHeight = 450

   type(Vector2) :: ballPosition

   call InitWindow(screenWidth, screenHeight, "raylib [core] example - keyboard input"//c_null_char)

   ballPosition = Vector2(screenWidth / 2.0, screenHeight / 2.0)

   call SetTargetFPS(60)

   do while (.not. WindowShouldClose())
      if (IsKeyDown(KEY_RIGHT)) then
         ballPosition%x = ballPosition%x + 2.0
      end if
      if (IsKeyDown(KEY_LEFT)) then
         ballPosition%x = ballPosition%x - 2.0
      end if
      if (IsKeyDown(KEY_UP)) then
         ballPosition%y = ballPosition%y - 2.0
      end if
      if (IsKeyDown(KEY_DOWN)) then
         ballPosition%y = ballPosition%y + 2.0
      end if

      call BeginDrawing()

         call ClearBackground(RAYWHITE)
         call DrawText("move the ball with arrow keys"//c_null_char, 10, 10, 20, DARKGRAY)
         call DrawCircleV(ballPosition, 50.0, MAROON)

      call EndDrawing()
   end do

   call CloseWindow()
end program
