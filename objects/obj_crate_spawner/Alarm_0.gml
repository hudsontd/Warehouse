// Create box at spawner location, and move onto the screen
random_crate = scr_return_crate_type();

if random_crate != "noone" {
	instance_create_layer(x,y,"Instances",asset_get_index(random_crate));
}

alarm[0] = irandom_range(180,360);
