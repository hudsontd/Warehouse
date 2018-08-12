// Increment through the array, and update counters
num_crates_in_zone = 0;
num_potions_in_zone = 0;
num_fish_in_zone = 0;
num_dragons_in_zone = 0;

var obj_name = "";
var crate_id = noone;

for (var i = 0; i < array_length_1d(cratesOnPoint); i++) {
	
	if( cratesOnPoint[i] > 0 ){
		crate_id = cratesOnPoint[i].object_index;
		obj_name = object_get_name(crate_id);
	}
	
	if(obj_name == "obj_crate") {
		num_crates_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == "obj_crate_potions") {
		num_potions_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == "obj_crate_cage_fish") {
		num_fish_in_zone++;	
	}
	if(object_get_name(cratesOnPoint[i]) == "obj_crate_cage_dragon") {
		num_dragons_in_zone++;	
	}
}