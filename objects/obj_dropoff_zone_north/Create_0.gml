// Set up all possible dropoff crates
crate_one = scr_return_crate_type();
crate_two = scr_return_crate_type();
crate_three = scr_return_crate_type();
crate_four = scr_return_crate_type();
crate_five = scr_return_crate_type();

// Set up variables for number of crates needed for delivery
num_dragons = 0;
num_crates = 0;
num_potions = 0;
num_fish = 0;

// Set up variables for number of crates in delivery zone
num_dragons_in_zone = 0;
num_crates_in_zone = 0;
num_potions_in_zone = 0;
num_fish_in_zone = 0;

// Checks to see if the delivery crates have been counted yet
countedYet = false;

// Create array to keep track of overlapping boxes
cratesOnPoint[0] = noone;

current_crate = noone;