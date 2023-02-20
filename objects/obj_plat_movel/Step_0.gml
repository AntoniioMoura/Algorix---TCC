/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(criar_trilho){
	if(subir){
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x,y-15*i,"trilhos",obj_plat_trilho);	
		}
	}else{
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x,y+15*i,"trilhos",obj_plat_trilho);	
		}
	}
	criar_trilho=false;
}

	if(instance_exists(obj_player) && obj_player.estado!=state.morte){
	if(place_meeting(x,y-1,obj_player)){
		if(place_meeting(x,y-15,obj_plat_trilho)){
			sprite_index = spr_plat_movel;
			y-=2;	
			obj_player.y-=2;
		}else{
			sprite_index = spr_plat_movel_idle;
		}
	
	}else{
		if(place_meeting(x,y+15,obj_plat_trilho)){
			sprite_index = spr_plat_movel_contrario;
			y+=2;
		}
		else{
			sprite_index = spr_plat_movel_idle;
		}
	}
	if(place_meeting(x,y+2,obj_player)){
		obj_player.estado= state.morte;	
	}
}
