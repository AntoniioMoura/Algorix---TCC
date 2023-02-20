/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if(place_meeting(x,y-1,obj_player)){
		ativou = true;
		if(y<yy+10){
			y+=1;
			obj_player.y+=1;
		}
	}else if(instance_exists(obj_plat_voadora)){
		if(y>yy && !caindo){
			y-=1;
			obj_player.y-=1;
		}
	}
}


if(ativou){
	tempo--;
	if(tempo<=0){
		caindo=true;
		sprite_index=-1;
		ativou = false;
		tempo = room_speed*3;
	}
}

if(caindo){
	tempo--;
	if(tempo<=0){
		sprite_index=spr_plat_voadora;
		ativou = false;
		tempo = room_speed*2;
		image_speed=1;
		caindo = false;
		x=xx;
		y=yy;	
		tempo = room_speed*2;
		aparecendo = true;
		alpha_image=0.1;
	}	
}

