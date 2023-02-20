/// @description Insert description here
// You can write your code in this editor

//Desenhando a minha sprite com a escala atualizada
if (velh != 0){
	ver = sign(velh);
}

draw_sprite_ext(sprite_index,image_index,x,y,xscale*ver,yscale,image_angle,image_blend, image_alpha);