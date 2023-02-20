/// @description Insert description here
// You can write your code in this editor

var tamanho = sprite_get_width(spr_agua_idle)-8;
agua--;
cont--;

if (agua==0){
	sprite_index=spr_agua_idle;
	alarm[0]=room_speed*5;
	
}

if(cont<=0 && agua>=0 && instance_exists(obj_player)){
if(collision_rectangle(x-sprite_get_width(spr_agua_idle)-12,y,x+sprite_get_width(spr_agua_idle)+12,y-room_height,obj_player,1,1)){
	obj_player.velv=-5;
	obj_player.estado=state.movendo;
	obj_player.sprite_index = spr_player_virtual_jump;
}
	
	instance_create_layer(x+random_range(tamanho,-tamanho),y,"cenario",obj_gota);
	cont=5;
}
