// Create an array of all possible crate options
array = [obj_crate, obj_crate_potions, obj_crate_cage_fish, obj_crate_cage_dragon];
// Set random_num to a random interval between 0 and 4
random_num = irandom_range(0,3);
// Use random_num to return a random crate
return array[random_num];