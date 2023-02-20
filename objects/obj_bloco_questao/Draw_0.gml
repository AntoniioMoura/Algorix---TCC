/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_quiz);
if(letra==1){
	draw_text(x+sprite_width/2-10,y+sprite_height/2-12,"A");
}

if(letra==2){
	draw_text(x+sprite_width/2-10,y+sprite_height/2-12,"B");
}

if(letra==3){
	draw_text(x+sprite_width/2-10,y+sprite_height/2-12,"C");
}

draw_set_font(-1);