/// @description Insert description here
// You can write your code in this editor
draw_self();
var x1 = x-48*distancia_colisao;
var y1 = y - 60*altura_colisao;
var x2 = x+48*distancia_colisao;
var y2 = y + 60*altura_colisao;

if(mostrar_borda){
	draw_rectangle_color(x1,y1,x2,y2,c_red,c_red,c_red,c_red,true);
	draw_rectangle_color(x1-120,y1,x2+120,y2,c_blue,c_blue,c_blue,c_blue,true);
}
//draw_rectangle(x1,y1,x2,y2,true);
if(ativo && (!aparecendo || desaparecer)){
	draw_set_font(fnt_pixel);
	var sep_w = string_width(texto);
	draw_rectangle(x-sep_w/2-16,y-sprite_height*2-8,x+sep_w/2+16,y-sprite_height/2-60,false);
	draw_text_color(x-sep_w/2,y-sprite_height*2,texto,c_black,c_black,c_black,c_black,1);	
	draw_set_font(-1);
}