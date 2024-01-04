/// @desc Pick a message

if(alarm[1] < 0){
	var _spr_h = sprite_get_height(sprite_index);
	var _spr_w = sprite_get_width(sprite_index);

	if(point_in_rectangle(mouse_x, mouse_y, x - 0.5*_spr_w, y - 0.5*_spr_h, x + 0.5*_spr_w, y + 0.5*_spr_h)){
		if(!focus){
			focus = true;
			alarm[0] = 2*room_speed;
		} else if(focus and alarm[0] < 0){
			if(sound != noone) audio_play_sound(sound, 1, false);
			else show_debug_message(msg);
			focus = false;
			alarm[1] = 10*room_speed;
		}
	}
}