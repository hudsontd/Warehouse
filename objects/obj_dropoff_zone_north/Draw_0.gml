// Draw Number of Crates needed for delivery
draw_text_transformed(315,1,num_crates,0.3,0.3,0);
draw_text_transformed(315,9,num_potions,0.3,0.3,0);
draw_text_transformed(315,17,num_fish,0.3,0.3,0);
draw_text_transformed(315,25,num_dragons,0.3,0.3,0);
// Draw Number of Crates in delivery zone
draw_text_transformed(307,1,num_crates_in_zone,0.3,0.3,0);
draw_text_transformed(307,9,num_potions_in_zone,0.3,0.3,0);
draw_text_transformed(307,17,num_fish_in_zone,0.3,0.3,0);
draw_text_transformed(307,25,num_dragons_in_zone,0.3,0.3,0);

draw_text(20,20,current_crate);
for (i=0;i<array_length_1d(cratesOnPoint);i++) {
	draw_text(i*10,30,cratesOnPoint[i]);
}

