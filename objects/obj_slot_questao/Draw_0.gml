/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_questao)){

		//Desenhando meu item caso eu possua um
		var pergunta = obj_questao.desafio[# var_slot, 0];
		var comando = obj_questao.desafio[# var_slot, 1];
		draw_set_color(c_black);
		draw_set_font(fnt_principal);	//alterando a fonte
		if(!resposta){	//Verificando se nao é uma resposta, ou seja, imprimir as perguntas
			if(pergunta!=0){//Se a pergunta for diferente de zero, ou seja, ta vazio	
				draw_text(x,y+3,string(pergunta));	//Imprimindo uma pergunta
			}else{ //Se a pergunta for igual a 0, quer dizer q ela é uma resposta. entao tem que imprimir a sprite dela vazia
				sprite_index = spr_comando_pergunta;
				draw_self();
			}
		}else{
			draw_set_color(c_white);
			sprite_index = spr_slot;
			draw_self();
			draw_text(x+8,y+6,string(comando));	//Imprimindo uma resposta
		}
	}
	
draw_set_color(c_white);
draw_set_font(-1);	//alterando a fonte