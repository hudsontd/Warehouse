// Setup forklift movement
if keyboard_check(ord("W")) {
	direction = image_angle;
	if (speed < 2) {
		speed += 0.1;	
	}
} else if (speed > 0) {
	speed -= 0.1;	
}

if keyboard_check(ord("S")) {
	direction = image_angle;
	if (speed > -2) {
		speed -= 0.1;	
	}
} else if (speed < 0) {
	speed += 0.1;	
}

if keyboard_check(ord("D")) {
	image_angle -= 2;	
}


if keyboard_check(ord("A")) {
	image_angle += 2;	
}