if obj_forklift.hasLoad == false {
	with(obj_moveable_crate) {
		if place_meeting(x,y,other) {
			other.speed = 3;
			direction = other.direction;
			speed = 0;
			friction = 0.2;
		}
	}
}
