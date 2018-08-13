// When created, set an alarm to a random interval, when
// that alarm goes off, it will spawn a box.
alarm[0] = irandom_range(30,60);

// Spawner knows last spawned item, and won't repeat
current_crate = "";
last_crate = "";