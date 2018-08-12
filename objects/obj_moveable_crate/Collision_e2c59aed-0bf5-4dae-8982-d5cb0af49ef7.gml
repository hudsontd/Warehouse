if keyboard_check_pressed(vk_space) {
	obj_forklift.hasLoad = true;
}

if keyboard_check_released(vk_space) {
	obj_forklift.hasLoad = false;	
}

if obj_forklift.hasLoad == true {
	image_angle = obj_forklift.image_angle;
	self.x = obj_forks_collision.x;
	self.y = obj_forks_collision.y;
	direction = obj_forklift.direction;
}
