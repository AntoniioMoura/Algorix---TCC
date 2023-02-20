/// @description Insert description here
// You can write your code in this editor

	draw_self();
	//Desenhando meu item caso eu possua um

	 pergunta = obj_npc_desafios.desafio[# var_slot, 0];	//Guardando os objetos do inventario/slots, da linha 0
	 comando = obj_npc_desafios.desafio[# var_slot, 1];	//Guardando os objetos do inventario/slots, da linha 1
	var w = 50;
	var sep = string_height("oi");
	draw_set_font(fnt_principal);	//alterando a fonte
	if(!resposta){	//Verificando se nao é uma resposta, ou seja, imprimir as perguntas
		if(pergunta!=0){	//Se a pergunta for diferente de zero, ou seja, ta vazio
			draw_text_ext(x,y,string(pergunta),sep,w);	//Imprimindo uma pergunta
		}
	}else{
		draw_text_ext(x,y,string(comando),sep,w);	//Imprimindo uma resposta
	}
	draw_set_font(-1);
	