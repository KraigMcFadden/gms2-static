/// @description Moves calling object and collides with objStructures marked isSolid
/// @param xadd
/// @param yadd

var xadd = argument0;
var yadd = argument1;

// moving us in x direction
var obj = instance_place(x + xadd, y, all);
if (obj != noone and obj.solid) {
	for (var i = 0; i < abs(xadd) 
		and !place_meeting(x + sign(xadd), y, obj); i++)
		x += sign(xadd);
} else {
	x += xadd;
}
	
// moving us in y direction
var obj = instance_place(x, y + yadd, all);
if (obj != noone and obj.solid) {
	for (var i = 0; i < abs(yadd)
		and !place_meeting(x, y + sign(yadd), obj); i++)
		y += sign(yadd);
} else {
	y += yadd;
}