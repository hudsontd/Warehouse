// If the new set of crates haven't been counted yet, count them.
if !countedYet {
	scr_determine_drop_off();
	countedYet = true;
}

// Check if crates in delivery zone matches crates needed
// If so, delete instances on point, and score for each

if (num_crates == num_crates_in_zone) and (num_dragons == num_dragons_in_zone) and (num_potions == num_potions_in_zone) and (num_fish == num_fish_in_zone) {
	// if so, loop through list, score 10 points for each box, and delete
	for (i = 0; i < ds_list_size(cratesOnPoint); i++) {
		if ds_list_find_value(cratesOnPoint,i) == obj_forklift.load {
			// Forklift load will be deleted, set load values back to none
			obj_forklift.hasLoad = false;
			obj_forklift.load = noone;
		}
		instance_destroy(ds_list_find_value(cratesOnPoint, i));
		score += 10;

	}
	
	// After scoring an area, re-randomize what should be there.
	// Set up variables for number of crates needed for delivery
	num_dragons = 0;
	num_crates = 0;
	num_potions = 0;
	num_fish = 0;
	
	crate_one = scr_return_crate_type();
	crate_two = scr_return_crate_type();
	crate_three = scr_return_crate_type();
	crate_four = scr_return_crate_type();
	crate_five = scr_return_crate_type();
	
	countedYet = false;
	
	// increment time
	obj_timer.time += 5;

}

if !place_meeting(x,y,obj_moveable_crate) {
	// Increment through the array, and update counters
	num_crates_in_zone = 0;
	num_potions_in_zone = 0;
	num_fish_in_zone = 0;
	num_dragons_in_zone = 0;	
}

// After drawing the scores, reset the cratesOnPoint list
// so that it recalculates every step.
for (i = 0; i < ds_list_size(cratesOnPoint); i++) {
	ds_list_delete(cratesOnPoint,i);
}