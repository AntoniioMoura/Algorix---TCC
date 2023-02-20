/// @description Insert description here
// You can write your code in this editor


//Checando se o player acabou de cair no chao
var temp = place_meeting(x,y+1,obj_plat);


//Se isso, entao o player acabou de tocar no chao
if(temp && !chao){ 
	xscale = 1.5;
	yscale = .5;
	
	//Criando particulas de poeira
	for(var i=0; i<irandom_range(4,10); i++){
		var xx = random_range(x-sprite_width,x+sprite_width);
		instance_create_layer(xx,y,"particulas",obj_vel);
	}
}
