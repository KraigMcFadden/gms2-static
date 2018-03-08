/// @description Moves calling object and collides with objStructures marked isSolid
/// @param xadd
/// @param yadd

var xadd = argument0;
var yadd = argument1;

// moving us in x direction
var obj = instance_place(x + xadd, y, objWall);
if (obj != noone) {
	for (var i = 0; i < abs(xadd) 
		and !place_meeting(x + sign(xadd), y, objWall); i++)
		x += sign(xadd);
} else {
	x += xadd;
}
	
// moving us in y direction
var obj = instance_place(x, y + yadd, objWall);
if (obj != noone) {
	for (var i = 0; i < abs(yadd)
		and !place_meeting(x, y + sign(yadd), objWall); i++)
		y += sign(yadd);
} else {
	y += yadd;
}