/// @description Insert description here
// You can write your code in this editor

var olhar =0;
//Fazendo olhar para o player
if(instance_exists(obj_player)){
	if(x>obj_player.x){
		 image_xscale = -1;	
		 olhar = -1;
	}else{
		image_xscale = 1;
		 olhar = 1;
	}
}


var x1 = x - 48 * 6;
var y1 = y - 60 * 6;
var x2 = x + 48 * 6;
var y2 = y + 60 * 6;

aparecer = collision_rectangle(x1-120,y1,x2+120,y2,obj_player,true,false);
alcance = collision_rectangle(x1,y1,x2,y2,obj_player,true,false);

if(aparecer){
	if(alcance){
		//show_message("ENTROU NO ALCANCE MEN")
		ativo = true;
		entrou=true;
	}else if(tempo_mensagem){
		tempo_mensagem=false;
		alarm[0]=room_speed*5;	
		}
	if(aparecendo){
		sprite_index=spr_player_start;
		if (image_index>=image_number-1){
			sprite_index=sprite;	
			aparecendo=false;
			desaparecer=true;
		}
	}
}

if(desaparecer && !aparecer && entrou){
	desaparecer = false;
	alarm[1]=room_speed*6;	
}

if(sprite_index=spr_player_end){
	if(image_index>image_number-1){
		instance_destroy();	
	}
}
show_debug_message(desaparecer);