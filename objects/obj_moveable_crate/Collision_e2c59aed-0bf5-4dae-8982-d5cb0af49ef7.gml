if keyboard_check_pressed(vk_space) {
	obj_forklift.hasLoad = true;
	if (obj_forklift.load == noone){
		obj_forklift.load = id;	
	}
}

if keyboard_check_released(vk_space) {
	obj_forklift.hasLoad = false;
	obj_forklift.load = noone;
}

if obj_forklift.hasLoad == true  && obj_forklift.load == id{
	image_angle = obj_forklift.image_angle;
	self.x = obj_forks_collision.x;
	self.y = obj_forks_collision.y;
	direction = obj_forklift.direction;
}
