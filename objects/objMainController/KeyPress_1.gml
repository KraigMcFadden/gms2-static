/// @description Start game (or escape)

if (keyboard_check_pressed(vk_escape)) 
	game_end();

if (isStart) {
	room_goto_next();
	isStart = false;
}