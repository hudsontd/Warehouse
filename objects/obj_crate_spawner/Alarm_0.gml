// Create box at spawner location, and move onto the screen
current_crate = scr_return_crate_type();
// current spawn knows current crate

	// if current_crate != last crate, draw for another box
if (current_crate != last_crate) and (current_crate != "noone") {
	instance_create_layer(x,y,"Instances",asset_get_index(current_crate));
	alarm[0] = irandom_range(180,360);
	last_crate = current_crate;
} else {
	// if the crate was "noone" or "last_crate" retry
	alarm[0] = 1;
}


