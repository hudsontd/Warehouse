with (obj_crate) {
	if place_meeting(x,y,obj_dropoff_zone_north) {
		score += 10;
		instance_destroy();
	}
}