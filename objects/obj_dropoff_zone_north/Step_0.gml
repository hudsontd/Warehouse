// If the new set of crates haven't been counted yet, count them.
if !countedYet {
	scr_determine_drop_off();
	countedYet = true;
}

scr_check_drop_off_overlap();
scr_count_overlap();
