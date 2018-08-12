// Increment through the array, and update counters
num_crates_in_zone = 0;
num_potions_in_zone = 0;
num_fish_in_zone = 0;
num_dragons_in_zone = 0;
	
for (i=0; i < array_length_1d(cratesOnPoint); i++) {
	if(object_get_name(cratesOnPoint[i]) == obj_crate) {
		num_crates_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == obj_crate_potions) {
		num_potions_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == obj_crate_cage_fish) {
		num_fish_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == obj_crate_cage_dragon) {
		num_dragons_in_zone++;	
	}
}