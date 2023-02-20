/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,obj_player) && !acabou && sprite_index!=spr_bandeira_idle){
	sprite_index = spr_bandeira_movendo;
	acabou = true;
}