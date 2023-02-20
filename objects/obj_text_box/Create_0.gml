/// @description Insert description here
// You can write your code in this editor
textbox_width = camera_get_view_width(view_camera[0]) / 2 + sprite_get_width(spr_player_spk_happy) + 32;
textbox_heith = 160;
show_debug_message(textbox_width);
border = 16;
line_sep = 32;
line_width = textbox_width - border * 2;
text_spr[0] = spr_textbox;
text_img = 0;
text_img_spd = 4/60;


//text
page = 0;
page_number = 0;

text[0] = "";

text_lenght[0] = string_length(text[0]);

char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;


draw_char = 0;
text_spd = 0.32;

setup = false;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

//effects
scr_set_defaults_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 12;


//sound
snd_delay = 4;
snd_count = snd_delay;
