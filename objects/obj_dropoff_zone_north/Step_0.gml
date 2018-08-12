// If the new set of crates haven't been counted yet, count them.
if !countedYet {
	scr_determine_drop_off();
	countedYet = true;
}

// Check if crates in delivery zone matches crates needed
if (num_crates == num_crates_in_zone) and (num_dragons == num_dragons_in_zone) and (num_potions == num_potions_in_zone) and (num_fish == num_fish_in_zone) {
	
}

// After drawing the scores, reset the cratesOnPoint list
// so that it recalculates every step.
for (i = 0; i < ds_list_size(cratesOnPoint); i++) {
	ds_list_delete(cratesOnPoint,i);
}
