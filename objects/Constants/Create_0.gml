/// @description Object to hold constants, 
/// enums, and other global data

/* Enums */
enum cam { ID=0, WIDTH, HEIGHT, X, Y, N };
enum gui { WW=0, WH, SCALE, GRID_SIZE, N };
enum instLayers { INST=0, UTIL, FLOOR_TILE, WALL_TILE, N };

/* Room */
GRID_SIZE = 16;
ROOM_DIAG = sqrt(room_width*room_width + room_height*room_height);
GAME_SPEED = game_get_speed(gamespeed_fps);
gameLayers = array_create(instLayers.N, noone);  // objMainController will fill

/* Cameras */
camera = array_create(cam.N, 0);
camera[cam.WIDTH] = 640;
camera[cam.HEIGHT] = 360;
camera[cam.ID] = camera_create_view(0, 0, camera[cam.WIDTH],
	camera[cam.HEIGHT], 0, -1, -1, -1, 32, 32);
camera[cam.X] = 0;
camera[cam.Y] = 0;
camera_set_end_script(camera[cam.ID], cameraAdjust);

/* GUI */
guiVals = array_create(gui.N, 0);
guiVals[gui.WW] = window_get_width();
guiVals[gui.WH] = window_get_height();
guiVals[gui.SCALE] = guiVals[gui.WW] / Constants.camera[cam.WIDTH];
guiVals[gui.GRID_SIZE] = Constants.GRID_SIZE * guiVals[gui.SCALE];

/* Particles */
wireParticles = part_system_create();
wireParticleOn = part_type_create();
part_type_shape(wireParticleOn, pt_shape_pixel);
part_type_speed(wireParticleOn, 0.05, 0.2, 0, 0.05);
part_type_direction(wireParticleOn, 85, 95, 0, 3);
part_type_colour2(wireParticleOn, c_blue, c_yellow);
part_type_life(wireParticleOn, room_speed/2, room_speed*2);