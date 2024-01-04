/// @desc Switch room

show_debug_message(global.voice)

if(alarm[1] < 0){
	var _spr_h = sprite_get_height(sprite_index);
	var _spr_w = sprite_get_width(sprite_index);

	if(point_in_rectangle(mouse_x, mouse_y, x - 0.5*_spr_w, y - 0.5*_spr_h, x + 0.5*_spr_w, y + 0.5*_spr_h)){
		if(!focus){
			focus = true;
			alarm[0] = 2*room_speed;
		} else if(focus and alarm[0] < 0){
			if(room == rm_first) room_goto(rm_second);
			else room_goto(rm_first);
			focus = false;
			alarm[1] = 10*room_speed;
		}
	}
}