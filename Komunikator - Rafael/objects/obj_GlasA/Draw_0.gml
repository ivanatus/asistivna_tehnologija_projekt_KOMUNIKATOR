/// @desc Draw text

draw_set_font(fnt_BigLetters);
if(global.voice == "A") draw_set_color(c_dkgray);
else draw_set_color(c_ltgray);

draw_text(x, y, "Glas A");

draw_set_font(fnt_SmallLetters);
draw_set_color(c_white);