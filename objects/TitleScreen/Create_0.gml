/// @description Resize room, cam, view, port

randomize();

window_set_fullscreen(true);
display_set_gui_size(1024, 576);

isStart = true;
setLoc = true;

title = "static";
inst = "press enter";

// start playing Waiting
var waiting = audio_play_sound(sndWaiting, 1, false);
audio_sound_set_track_position(waiting, 2);

// time the fade in to the title
fadeIn = 1.0;