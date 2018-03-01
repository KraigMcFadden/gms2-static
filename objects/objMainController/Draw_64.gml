/// @description Draw title and start

if (isStart) {
	var ww = window_get_width();
	var wh = window_get_height();
	var scale = ww / room_width;

	draw_set_font(fontStart);

	// title
	if (random(1.0) < 0.98) {
		draw_text_transformed(titlex + random(4), titley + random(2), 
			title, 1.5* scale, 1.5*scale, 0);
	}
	// instructions
	if (random(1.0) < 0.97) {
		draw_text_transformed(instx + random(2), insty + random(1), 
			inst, scale, scale, 0);
	}
}