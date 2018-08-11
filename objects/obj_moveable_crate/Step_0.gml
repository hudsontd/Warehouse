if place_meeting(x,y,obj_forklift) {
	if keyboard_check(vk_space) {
		image_angle = obj_forklift.image_angle;
		x = obj_forklift.x + lengthdir_x(20, obj_forklift.image_angle);
		y = obj_forklift.y + lengthdir_y(20, obj_forklift.image_angle);
	}
}