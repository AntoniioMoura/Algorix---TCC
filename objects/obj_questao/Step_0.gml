/// @description Insert description here
// You can write your code in this editor

//Virando o npc
if(instance_exists(obj_player)){
	if(x>obj_player.x){
		image_xscale = -1;	
	}else{
		image_xscale = 1;
	}
}