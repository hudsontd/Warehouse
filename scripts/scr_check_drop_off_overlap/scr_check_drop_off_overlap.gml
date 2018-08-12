if place_meeting(x,y,obj_moveable_crate) {
	current_crate = obj_crate.id;
	// If "new" crate in area was already in the area, do nothing,
	// else, increment the appropriate counter.
	for (i=0; i < array_length_1d(cratesOnPoint); i++) {
		if (cratesOnPoint[i] == current_crate) {
			current_crate = noone;
		}
	}
	// If it passed the test, add it to the array
	if !(current_crate == noone) {
		cratesOnPoint[array_length_1d(cratesOnPoint)] = current_crate;
	}
}