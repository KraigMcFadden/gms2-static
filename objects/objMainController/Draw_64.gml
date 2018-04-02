/// @description Draw title and start

if (isStart) {
	
	var ww = window_get_width();
	var wh = window_get_height();
	var scale = ww / room_width;

	draw_set_font(fontStart);
	draw_set_alpha(1.0);
	draw_set_color(c_white);

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
	
	// draw semi-transparent box over the screen
	fadeIn = max(0.0, fadeIn - 0.005);
	draw_set_color(c_black);
	draw_set_alpha(fadeIn);
	draw_rectangle(0, 0, ww, wh, false);
}