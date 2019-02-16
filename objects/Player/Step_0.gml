/// @description Move

var xadd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yadd = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var spd = xadd != 0 and yadd != 0 ? walkSpeed/sqrt(2) : walkSpeed;
moveAndCollide(xadd*spd, yadd*spd);

if (xadd != 0 or yadd != 0) {
	image_speed = 0.5;
	if (y > yprevious) {
		sprite_index = sprPlayerWalkDown;
	} else if (y < yprevious) {
		sprite_index = sprPlayerWalkDown;
	} else {
		if (sprite_index == sprPlayer) {
			if (image_index == 0) {
				sprite_index = sprPlayerWalkDown;
			} else {
				sprite_index = sprPlayerWalkUp;
			}
		}
	}
} else {
	image_speed = 0;
	sprite_index = sprPlayer;
}

if (sprite_index = sprPlayer) {
	if (y > yprevious) {
		image_index = 0;
	} else if (y < yprevious) {
		image_index = 1;
	}
}