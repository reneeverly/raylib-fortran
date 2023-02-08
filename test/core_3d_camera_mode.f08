program core_3d_camera_mode
   use raylib
   implicit none
   
   integer, parameter :: screenWidth = 800
   integer, parameter :: screenHeight = 450
   
   type(Camera3D) :: camera
   type(Vector3) :: cubePosition

   call InitWindow(screenWidth, screenHeight, "raylib [core] example - 3d camera mode"//c_null_char)

   camera = Camera3D(Vector3(0.0, 10.0, 10.0), Vector3(0.0, 0.0, 0.0), Vector3(0.0, 1.0, 0.0), 45.0, CAMERA_PERSPECTIVE)
   camera%position = Vector3(0.0, 10.0, 10.0)
   camera%target = Vector3(0.0, 0.0, 0.0)
   camera%up = Vector3(0.0, 1.0, 0.0)
   camera%fovy = 45.0
   camera%projection = CAMERA_PERSPECTIVE

   print *, camera

   cubePosition = Vector3(0.0, 0.0, 0.0)

   call SetTargetFPS(60)

   do while (.not. WindowShouldClose())
      call BeginDrawing()

         call ClearBackground(RAYWHITE)

         call BeginMode3D(camera)
            call DrawCube(cubePosition, 2.0, 2.0, 2.0, RED)
            call DrawCubeWires(cubePosition, 2.0, 2.0, 2.0, MAROON)

            call DrawGrid(10, 1.0)
         call EndMode3D()

         call DrawText("Welcome to the third dimension!"//c_null_char, 10, 40, 20, DARKGRAY)

         call DrawFPS(10, 10)

      call EndDrawing()

   end do

   call CloseWindow()
   
end program
