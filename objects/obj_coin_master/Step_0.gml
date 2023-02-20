/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y+1,obj_plat)){
	chao=true;	
}else
	chao=false;
if(instance_exists(obj_player)){
	if(place_meeting(x,y,obj_player) && !coletado && ativo){
		global.pontos+=valor;
		coletado = true;
		sprite_index=spr_coin_collect;
		image_index=0;
	}
}

if(coletado){
	if(tocar){
		audio_play_sound(snd_coin,2,false);
		tocar = false;
	}
	if(image_index>=image_number-1){	
		instance_destroy();	
	}
}

if(criado && !place_meeting(x,y+1,obj_plat)){
	velh+=0.001;
	
	if(!chao){
		velv+=0.1;	
	}

	velv = clamp(velv,-1,6);

	
	x = clamp(x,0+sprite_width/2, room_width-sprite_width/2);
}
