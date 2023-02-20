/// @description Insert description here
// You can write your code in this editor

if(aparecendo){
	alpha_image+=alpha_image*0.05; 
	image_alpha = alpha_image; 
	if(alpha_image>=1){
		aparecendo=false;	
	}
}


if(caindo){
	alpha-=alpha*0.05;
	image_speed=0.3;
	if(alpha>=0){
		y+=2;
		draw_sprite_ext(spr_plat_voadora,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,alpha);	
	}
}else{
	draw_self();	
	alpha=1;
}

