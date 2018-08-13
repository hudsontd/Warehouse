/// @description text & button zoom

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_8bit_title);


var zoom = 1.1;

//if we're hovering over the button zoom in
if ( mouse_entered){
	image_xscale = zoom;
	image_yscale = zoom;
	
	draw_text_transformed(x, y, button_text, zoom, zoom, 0);
	
} else {
	//if we aren't hovering set to normal size
	image_xscale = 1;
	image_yscale = 1;
	
	//draw the text normally
	draw_text(x, y, button_text);
}

draw_self();
