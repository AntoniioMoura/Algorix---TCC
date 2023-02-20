accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 6 - 32;
textbox_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - textbox_heith - 10;

//setup
if (!setup) {
	
	setup = true;
	
	draw_set_font(fnt_principal);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop
	for (var i = 0; i < page_number; i++) {
		
		text_lenght[i] = string_length(text[i]);
		
		//get the x pos for the textbox
		
		//character on the left
		text_x_offset[i] = 80;
		portrait_x_offset[i] = -110;
		
		//character on the right
		if (speaker_side[i] == -1) {
			text_x_offset[i] = 8;
			portrait_x_offset[i] = textbox_width + 34
			
		}
		
		//no character center on textbox
		if (speaker_sprite[i] == noone) {
			text_x_offset[i] = 44;
		}
		
		//settings indivual characters and finding where the lines of text should break
		for (var j = 0; j < text_lenght[i]; j++) {
			var _char_pos = j + 1;
			
			//store indivual characters
			char[j, i] = string_char_at(text[i], _char_pos
			)
			
			//get current width of the line
			var_txt_up_to_char = string_copy(text[i], 1, _char_pos);
			var _current_txt_w = string_width(var_txt_up_to_char) - string_width(char[j,i]);
			
			//get the last free space
			if (char[j, i] == " ") {
				last_free_space = _char_pos + 1;
			}
			
			//get the line breaks
			if (_current_txt_w - line_break_offset[i] > line_width) {
				line_break_pos[line_break_num[i], i] = last_free_space;
				line_break_num[i]++;
				var _txt_up_to_last_space = string_copy(text[i], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[i], last_free_space);
				line_break_offset[i] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
			}
		}
		
		//getting each characters cordinates
		for (var j = 0; j < text_lenght[i]; j++) {
			var _char_pos = j + 1;
			var _txt_x = textbox_x + text_x_offset[i] + border;
			var _txt_y = textbox_y + border;
			
			//get current width the line
			var _txt_up_to_char = string_copy(text[i], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[j, i]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[i]; lb++) {
				//if looping character is after a line break
				if (_char_pos >= line_break_pos[lb, i]) {
					var _str_copy = string_copy(text[i], line_break_pos[lb, i], _char_pos - line_break_pos[lb, i]);
					_current_txt_w = string_width(_str_copy);
					
					//record the line this character should be on
					_txt_line = lb + 1; //+1 since lb start at 0
					
				}
			}
			
			//add to the x and y corditate base on the new info
			char_x[j, i] = _txt_x + _current_txt_w;
			char_y[j, i] = _txt_y + _txt_line * line_sep;
		}
		
	}
}


//Typing the text

if (text_pause_timer <= 0) {
	if (draw_char < text_lenght[page]) {
		
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, text_lenght[page]);
	
		var _check_char = string_char_at(text[page], draw_char);
	
		if (_check_char == "." || _check_char == "?" || _check_char == "!" || _check_char == ",") {
			
			text_pause_timer = text_pause_time;
			
			if (!audio_is_playing(snd[page])) {
				audio_play_sound(snd[page], 80, false);
			}

		} else {
			//typing sound
			if (snd_count < snd_delay) {
				snd_count++;
			} else {
				snd_count = 0;
				audio_play_sound(snd[page], 80, false);
			}
		}
		
		if (dialog_robot[page] != noone && !audio_is_playing(dialog_robot[page]) && !audio_played[page]) {
	
			audio_play_sound(dialog_robot[page], 100 ,false);
			
			audio_played[page] = true;
		
		}

	}
} else {
	text_pause_timer--;	
}

//flip through pages
if (accept_key) {
	//if the typing is done
	if (draw_char == text_lenght[page]) {
		if (page < page_number - 1) {
			
			if (audio_is_playing(dialog_robot[page])) {
				audio_stop_sound(dialog_robot[page]);
			}
			
			page++;
			draw_char = 0;
			
		} else {
			//link text for option
			if (option_number > 0) {
				scr_create_textbox(option_link_id[option_pos]);
			}
			
			instance_destroy();		
		}
	} else {
		//if not done typing
		draw_char = text_lenght[page];
	}
}


//draw the textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;

text_img += text_img_spd;
text_spr_w = sprite_get_width(text_spr[page]);
text_spr_h = sprite_get_height(text_spr[page]);

//draw the speaker
if (speaker_sprite[page] != noone) {
	sprite_index = speaker_sprite[page];
	
	if (draw_char == text_lenght[page]) {
		image_index = 0;
	}
	
	var _speaker_x = textbox_x + portrait_x_offset[page];
	
	if (speaker_side[page] == -1) {
		_speaker_x += sprite_width
	}
	
	//draw the speaker
	draw_sprite_ext(text_spr[page], text_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/text_spr_w, sprite_height/text_spr_h, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);

}



//back the textbox
draw_sprite_ext(text_spr[page], text_img, _txtb_x, _txtb_y, textbox_width/text_spr_w, textbox_heith/text_spr_h, 0, c_white, 1);

//options
if (draw_char == text_lenght[page] and page == page_number -1) {
	
	draw_set_font(fnt_option);

	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	
	var option_space = 35;
	var option_bord = 15; 
	for (var i = 0; i < option_number; i++) {
		
		//The option box
		var option_width = string_width(option[i]) + option_bord * 2;
		draw_sprite_ext(text_spr[page], text_img, _txtb_x + 32, _txtb_y - option_space * option_number + option_space * i, option_width/text_spr_w, (option_space - 1)/text_spr_h, 0, c_white, 1);
		
		//The arrow
		if (option_pos == i) {
			draw_sprite(spr_textbox_arrow, 0, _txtb_x - 5, _txtb_y - option_space * option_number + option_space * i);
		}
		
		//The option text
		draw_text(_txtb_x + 32 + option_bord, _txtb_y - option_space * option_number + option_space * i + 6, option[i]);
	}
	
}

draw_set_font(fnt_principal);


//draw the text

for (var i = 0; i < draw_char; i++) {
	
	//special stuff
	//floating text
	var _float_y = 0;
	
	if (float_text[i, page]) {
		float_dir[i, page] += -8;
		_float_y = dsin(float_dir[i, page]) * 1;
	}
	
	//Shake text
	var _shake_x = 0;
	var _shake_y = 0;
	
	if (shake_text[i, page]) {
		shake_timer[i,page]--;
		if (shake_timer[i, page] <= 0) {
			shake_timer[i, page] = irandom_range(4, 8);
			shake_dir[i,page] = irandom(360);
		}
		
		_shake_x = lengthdir_x(1, shake_dir[i, page]);
		_shake_y = lengthdir_y(1, shake_dir[i, page]);

	}
	
	
	//the text
	draw_text_color(char_x[i, page] + _shake_x, char_y[i, page] + _float_y + _shake_y, char[i, page], col_1[i, page], col_2[i, page], col_3[i, page], col_4[i, page], 1);
}
