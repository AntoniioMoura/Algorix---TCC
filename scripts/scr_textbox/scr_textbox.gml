function scr_set_defaults_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	text_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	
	snd[page_number] = snd_main_character;
	dialog_robot[page_number] = noone;
	audio_played[page_number] = false;
	
	//variable for every letter/character
	for (var i = 0; i < 500; i++) {
		col_1[i, page_number] = c_white;
		col_2[i, page_number] = c_white;
		col_3[i, page_number] = c_white;
		col_4[i, page_number] = c_white;
		
		float_text[i, page_number] = 0;
		float_dir[i, page_number] = i * 50;
		
		shake_text[i, page_number] = 0;
		shake_dir[i, page_number] = irandom(360);
		shake_timer[i, page_number] = irandom(4);
	}
}


//Text VFX
///@param 1st_char
///@param last_char
///@param colo1
///@param color2
///@param color3
///@param color4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4) {
	for (var i = _start; i<= _end; i++ ) {
		col_1[i, page_number - 1] = _col1;
		col_2[i, page_number - 1] = _col2;
		col_3[i, page_number - 1] = _col3;
		col_4[i, page_number - 1] = _col4;

	}
	
}


///@param 1st_char
///@param last_char
function scr_text_float(_start, _end) {
	for (var i = _start; i <= _end; i++) {
		float_text[i, page_number -1] = true;
	}
}


///@param 1st_char
///@param last_char
function scr_text_shake(_start, _end) {
	for (var i = _start; i <= _end; i++) {
		shake_text[i, page_number -1] = true;
	}
}


///@param text
///@param [protrait]
function scr_text(_text, _character, _robot, _dialog){
	show_debug_message("Foi criado");
	scr_set_defaults_text();
	
	text[page_number] = _text;
	
	//get character info

		
	switch(_character) {
			
		case "blue kid happy":
			speaker_sprite[page_number] = spr_player_spk_happy;
			text_spr[page_number] = spr_textbox;
			snd[page_number] = snd_main_character;
		break;
			
		case "blue kid sad":
			speaker_sprite[page_number] = spr_player_spk_sad;
			text_spr[page_number] = spr_textbox_robot;
			snd[page_number] = snd_robot;
			if (_dialog){
				dialog_robot[page_number] = _dialog;
			}

		break;
			
	}
	
	//side character, spected value -1 or 1
	if (_robot) {
		speaker_side[page_number] = -1;
	}
	
	page_number++;
}

/// @param text_id
function scr_create_textbox(_text_id) {
	with (instance_create_depth(0, 0, -9999, obj_text_box)) {
		scr_game_text(_text_id);
	}
}

/// @param option
/// @param link_id
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}