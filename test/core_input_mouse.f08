! Adapted from core_input_mouse.c
! Copyright (c) 2014-2023 Ramon Santamaria
program core_input_mouse
   use raylib

   integer, parameter :: screenWidth = 800
   integer, parameter :: screenHeight = 450

   type(Vector2) :: ballPosition
   type(Color) :: ballColor

   ballPosition = Vector2(-100.0, -100.0)
   ballColor = DARKBLUE

   call InitWindow(screenWidth, screenHeight, "raylib [core] example - mouse input"//c_null_char)

   call SetTargetFPS(60)

   do while (.not. WindowShouldClose())
      ballPosition = GetMousePosition()

      if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) then
         ballColor = MAROON
      else if (IsMouseButtonPressed(MOUSE_BUTTON_MIDDLE)) then
         ballColor = LIME
      else if (IsMouseButtonPressed(MOUSE_BUTTON_RIGHT)) then
         ballColor = DARKBLUE
      else if (IsMouseButtonPressed(MOUSE_BUTTON_SIDE)) then
         ballColor = PURPLE
      else if (IsMouseButtonPressed(MOUSE_BUTTON_EXTRA)) then
         ballColor = YELLOW
      else if (IsMouseButtonPressed(MOUSE_BUTTON_FORWARD)) then
         ballColor = ORANGE
      else if (IsMouseButtonPressed(MOUSE_BUTTON_BACK)) then
         ballColor = BEIGE
      end if


      call BeginDrawing()

      call ClearBackground(RAYWHITE)

      call DrawCircleV(ballPosition, 40.0, ballColor)

      call DrawText("move ball with mouse and click mouse button to change color"//c_null_char, 10, 10, 20, DARKGRAY)

      call EndDrawing()
   end do

   call CloseWindow()
end program
