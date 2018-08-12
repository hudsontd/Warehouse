if place_meeting(x,y,asset_get_index(crate_one)) {
	crate_one = asset_get_index(crate_one).id;
	crate_one_proper = true;
	if(obj_forklift.load == id) {
		obj_forklift.load = noone;
		obj_forklift.hasLoad = false;
	}
}

if place_meeting(x,y,asset_get_index(crate_two)) {
	crate_two = asset_get_index(crate_two).id;
	crate_two_proper = true;
	if(obj_forklift.load == id) {
		obj_forklift.load = noone;
		obj_forklift.hasLoad = false;
	}	
}
	
	
if place_meeting(x,y,asset_get_index(crate_three)) {
	crate_three = asset_get_index(crate_three).id;
	crate_three_proper = true;
	if(obj_forklift.load == id) {
		obj_forklift.load = noone;
		obj_forklift.hasLoad = false;
	}	
}

if (crate_one_proper and crate_two_proper and crate_three_proper) {
	instance_destroy(crate_one);
	instance_destroy(crate_two);
	instance_destroy(crate_three);
	crate_one_proper = false;
	crate_two_proper = false;
	crate_three_proper = false;
	score += 30;
		// Set up new dropoff crates
	crate_one = scr_return_crate_type();
	crate_two = scr_return_crate_type();
	crate_three = scr_return_crate_type();
} 


