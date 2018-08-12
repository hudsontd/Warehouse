	current_crate = other.id;
	
	// If "new" crate in area was already in the area, do nothing,
	// else, increment the appropriate counter.
	for (i=0; i < ds_list_size(cratesOnPoint); i++) {
		if (ds_list_find_value(cratesOnPoint,i) == current_crate) {
			current_crate = noone;
		}
	}
	// If it passed the test, add it to the array
	if !(current_crate == noone) {
		ds_list_add(cratesOnPoint,current_crate);
	}
//}