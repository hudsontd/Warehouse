// Create box at spawner location, and move onto the screen
random_crate = scr_return_crate_type();
instance_create_depth(x,y,-1,random_crate);

alarm[0] = irandom_range(180,360);
