//hit crate
with(obj_moveable_crate) {
	if place_meeting(x,y,other) {
		collision_sign = sign(other.speed);
		other.speed = 0;
		direction = other.direction;
		speed = 2 * collision_sign;
		friction = 0.2;
	}
}