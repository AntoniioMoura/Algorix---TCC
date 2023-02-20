/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_pontos);
draw_sprite(spr_texto,0,x+room_width-220,y+36);
draw_text(x+room_width-100,y+12, global.pontos);
draw_set_font(-1);