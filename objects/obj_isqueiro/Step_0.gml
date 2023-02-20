/// @description Insert description here
// You can write your code in this editor

switch(estado){
	case "inativo": 
	sprite_index=spr_isqueiro_idle;
		if(place_meeting(x,y-1,obj_player)){
			sprite_index=spr_isqueiro_hit;	
			estado="aceso";
			}
		break;
		
	case "aceso":
		tempo--;
		if(tempo==0){
			alarm[0]=room_speed*2;
			sprite_index=spr_isqueiro_on;	
		}
		break;
}








