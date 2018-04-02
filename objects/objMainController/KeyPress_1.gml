/// @description Start game (or escape)

if (keyboard_check_pressed(vk_escape)) {
	game_end();
} else if (keyboard_check_pressed(vk_enter) 
		   and isStart 
		   and fadeIn <= 0) {
	room_goto_next();
	isStart = false;
	audio_stop_sound(sndWaiting);  // stop main menu music
}