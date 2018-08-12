if place_meeting(x,y,obj_forks_collision) {
	if keyboard_check(vk_space) {
		image_angle = obj_forklift.image_angle;
		x = obj_forks_collision.x;
		y = obj_forks_collision.y;
		direction = obj_forklift.direction;
	}
}