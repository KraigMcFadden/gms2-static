/// @description Resize room, cam, view, port

randomize();

window_set_fullscreen(true);

isStart = true;

title = "static";
inst = "press enter to start (or esc to leave)";

// place the title and instructions
var h = string_height(title);
titlex = random_range(0, room_width);
titley = random_range(h, room_height - h);
instx = random_range(0, room_width);
insty = random_range(h, room_height - h);
while (string_width(title) + titlex >= room_width) {
	titlex -= 1;
}
while (string_width(inst) + instx >= room_width) {
	instx -= 1;
}

// start playing Waiting
var waiting = audio_play_sound(sndWaiting, 1, false);
audio_sound_set_track_position(waiting, 2);

// time the fade in to the title
fadeIn = 1.0;