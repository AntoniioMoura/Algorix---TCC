/// @description Insert description here
// You can write your code in this editor

image_alpha-=.03;
/*
Definindo aumento das particulas
image_xscale+=inc;
image_yscale = image_xscale;
*/

if(image_alpha<=0){
	instance_destroy();	
}