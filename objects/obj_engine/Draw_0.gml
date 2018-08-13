// Draw score to screen
depth = -10;

if room == rm_level {
	draw_text((room_width / 2), 165, score);
} else {
	draw_text((room_width / 2), 120, score);
}