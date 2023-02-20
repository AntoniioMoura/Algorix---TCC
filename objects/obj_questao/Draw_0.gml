/// @description Insert description here
// You can write your code in this editor
draw_self();
if(texto){
	draw_set_font(fnt_dicas);
	var sep_w = string_width(conteudo);
	draw_rectangle(x-16,y-54,x+sep_w-16,y-44,false);
	draw_text_color(x-16,y-54,conteudo,c_black,c_black,c_black,c_black,1);
	draw_set_font(-1);
	draw_set_color(-1);
}


