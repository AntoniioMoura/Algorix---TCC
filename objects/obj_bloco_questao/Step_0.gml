/// @description Insert description here
// You can write your code in this editor

colidiu = place_meeting(x,y-1,obj_player);
if(colidiu){
	obj_bloco_base_questao.faixa = letra	
}
if(colidiu){
	if(y<yy+10){
		y+=1;
		obj_player.y+=1;
	}
}else if(instance_exists(obj_player)){
	if(y>yy){
		y-=1;
		obj_player.y-=1;
	}
}