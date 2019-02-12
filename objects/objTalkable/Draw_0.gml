/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (isTalking) {
	var cam = view_camera[0];
	var xx = camera_get_view_x(cam);
	var yy = camera_get_view_y(cam);
	var w = camera_get_view_width(cam);
	var h = camera_get_view_height(cam);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_set_font(fnt2);
	
	var nameStr = name + ": ";
	draw_text(xx, yy + h, nameStr);
	draw_text(xx + string_width(nameStr), yy + h, text);
}