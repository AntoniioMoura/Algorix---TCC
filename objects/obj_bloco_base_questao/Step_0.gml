/// @description Insert description here
// You can write your code in this editor


event_inherited();
//---------------------PERGUNTAS E RESPOSTAS
var colidiu = place_meeting(x,y-1,obj_player);
	if(pode_criar_perguntas && colidiu){
		
		//obj_player.estado=state.questao;
		for(var i=1;i<=3;i++){
			var w = sprite_get_width(spr_bloco_questao)*2;
			var bloco = instance_create_layer(x+(i*w),y,"plataformas",obj_bloco_questao);	
			bloco.letra=i;
		}
		pode_criar_perguntas=false;
	}


