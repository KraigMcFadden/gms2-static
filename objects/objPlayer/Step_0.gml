/// @description Move

var xadd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yadd = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var spd = xadd != 0 and yadd != 0 ? 3/sqrt(2) : 3;
moveAndCollide(xadd*spd, yadd*spd);