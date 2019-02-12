/// @description Draw title and start

if (isStart) {
	
	var ww = 1024; //window_get_width();
	var wh = 576; //window_get_height();
	var scale = ww / room_width;

	draw_set_font(fnt1);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	var titleSize = 2.5;
	var instSize = 1;
	
	// place the title and instructions
	if (setLoc) {
		var wbuffer = ww * 0.2;
		var hbuffer = wh * 0.2;
		var th = string_height(title) * titleSize;
		var tw = string_width(title) * titleSize;
		var ih = string_height(inst) * instSize;
		var iw = string_width(inst) * instSize;
		titlex = random_range(wbuffer, ww - tw - wbuffer);
		titley = random_range(hbuffer, wh - th - ih - hbuffer);
		instx = random_range(wbuffer, ww - iw - wbuffer);
		insty = random_range(hbuffer + titley + th, wh - ih - hbuffer);
		setLoc = false;
	}

	// draw title and instructions and make them waver
	if (random(1.0) < 0.98) {
		draw_text_transformed(titlex + random(4), titley + random(2), 
			title, titleSize, titleSize, 0);
	}
	if (random(1.0) < 0.97) {
		draw_text_transformed(instx + random(2), insty + random(1), 
			inst, instSize, instSize, 0);
	}
	
	// draw semi-transparent box over the screen
	fadeIn = max(0.0, fadeIn - 0.005);
	draw_set_color(c_black);
	draw_set_alpha(fadeIn);
	draw_rectangle(0, 0, ww, wh, false);
	draw_set_color(c_white);
	draw_set_alpha(1.0);
}