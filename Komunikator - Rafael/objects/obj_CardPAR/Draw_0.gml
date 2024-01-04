/// @desc Display the message

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_black);
if(sprite != noone)
	draw_sprite_ext(sprite, 0, x, y, 1.2*image_xscale, 1.2*image_yscale, 0, image_blend, image_alpha);
draw_text(x, y + 95, msg);