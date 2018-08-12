with (obj_crate) {
	if place_meeting(x,y,obj_dropoff_zone_north) {
		score += 10;
			
		if(obj_forklift.load == id){
			obj_forklift.load = noone;
			obj_forklift.hasLoad = false;
		}
		instance_destroy();
	}
}

if keyboard_check(ord("Q")) {
	// Set up all possible dropoff crates
	crate_one = scr_return_crate_type();
	crate_two = scr_return_crate_type();
	crate_three = scr_return_crate_type();
	crate_four = scr_return_crate_type();	
	
	score += 10;
}