/// @desc Pick a voice

var _spr_h = string_width("Glas A");
var _spr_w = string_height("Glas A");

if(point_in_rectangle(mouse_x, mouse_y, x - 0.5*_spr_w, y - 0.5*_spr_h, x + 0.5*_spr_w, y + 0.5*_spr_h)){
	if(!focus){
		focus = true;
		alarm[0] = 2*room_speed;
	} else if(focus and alarm[0] < 0){
		global.voice = "A";
	}
}