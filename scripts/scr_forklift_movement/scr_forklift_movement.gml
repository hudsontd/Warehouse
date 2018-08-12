// If "W", set movement direction to current image_angle
// If speed is less than X, accelerate to that speed, if "W"
// is released, decelerate back to 0 mph.
if keyboard_check(ord("W")) {
	direction = image_angle;
	if (speed < 2) {
		speed += 0.1;	
	}
} else if (speed > 0) {
	speed -= 0.1;	
} else if place_meeting(x+speed, y, obj_moveable_crate) { 
	x = xprevious; 
}


// If "S", set movement direction to current image_angle
// If speed is greater than X, accelerate to that speed, if "S"
// is released, decelerate back to 0 mph.
if keyboard_check(ord("S")) {
	direction = image_angle;
	if (speed > -2) {
		speed -= 0.1;	
	}
} else if (speed < 0) {
	speed += 0.1;	
}

// If "A", rotate sprite to the left, modifies image_angle as well
// so new movement direction can be set.
if keyboard_check(ord("A")) {
	image_angle += 5;	
}

// If "D", rotate sprite to the right, modifies image_angle as well
// so new movement direction can be set.
if keyboard_check(ord("D")) {
	image_angle -= 5;	
}

