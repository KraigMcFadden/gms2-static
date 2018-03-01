/// @description Resize room, cam, view, port

window_set_fullscreen(true);

isStart = true;

title = "static";
inst = "press any key to start (or esc to leave)";

var h = string_height(title);

randomize();
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