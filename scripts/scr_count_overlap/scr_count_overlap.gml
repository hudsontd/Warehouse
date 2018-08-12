// Increment through the array, and update counters
num_crates_in_zone = 0;
num_potions_in_zone = 0;
num_fish_in_zone = 0;
num_dragons_in_zone = 0;

var obj_name = "";
for (var i = 0; i < ds_list_size(cratesOnPoint); i++) {
    
	if( ds_list_size(cratesOnPoint) > 0 ){
	    obj_name = object_get_name(ds_list_find_value(cratesOnPoint,i).object_index);
	}
    
	if(obj_name == "obj_crate") {
	    num_crates_in_zone++;    
	}
	if(obj_name == "obj_crate_potions") {
	    num_potions_in_zone++;    
	}
	if(obj_name == "obj_crate_cage_fish") {
	    num_fish_in_zone++;    
	}
	if(obj_name == "obj_crate_cage_dragon") {
	    num_dragons_in_zone++;    
	}
}