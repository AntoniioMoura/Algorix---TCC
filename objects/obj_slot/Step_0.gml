/// @description Insert description here
// You can write your code in this editor
var insere = true; //Variavel para verificar se vai inserir o comando no slot
var cont=0;
//Verificando se o slot colidiu com o player e se o player ja estava carregando o comando antes
if(place_meeting(x,y,obj_player)){
	if(resposta){ //Verificando se o player colidiu em um slot de respostas//comando
		obj_player.armazena = comando; //Passando para o player o valor que tinha no slot
		image_blend = c_lime;	//Alterando a cor do slot selecionado
		obj_player.carregando_comando = true;	//colocando como verdadeiro a variavel que verifica se o player esta carregando um comando ou nao
		obj_player.slot = var_slot; //passando para o player o id do slot
		ativo = true;
		
		
	}
}


if(place_meeting(x,y,obj_player) && obj_player.slot!=var_slot && resposta){
		image_blend=c_white;
}

	
//Se o player colidiu com o objeto e o player esta carregando um comando
if(place_meeting(x,y,obj_player) && obj_player.carregando_comando){
	if(!resposta && comando!=0){	 //Verificando se nao é uma resposta/comando, ou seja, é uma pergunta e verificando se no local o valor é igual a zero. ou seja, ta vazio
			for(var i=0;i<obj_npc_desafios.tamanho;i++){	//Repetição para percorrer toda a grid na linha 0
				if(obj_npc_desafios.desafio[# obj_player.slot, 1]==obj_npc_desafios.desafio[# i, 0] && insere){ //Condição verificando se o comando que o player tocou ja existe na linha zero,
					obj_npc_desafios.desafio[# var_slot, 0] = obj_npc_desafios.desafio[# obj_player.slot, 1]; //Se ja existir um comando igual, o player vai substituir com o valor do comando
					obj_npc_desafios.desafio[# i, 0] = 0; //E vai transformar o que era igual em zero
					obj_player.carregando_comando=false; //O player nao esta mais carregando um comando
					 insere = false; //transformando em false, caso for false nao vai inserir		 
				}
			}
			if(insere){ //Se nao achou comando igual na mesma linha, entao ele vai poder inserir.
				obj_npc_desafios.desafio[# var_slot, 0] = obj_npc_desafios.desafio[# obj_player.slot, 1]; //----IMPORTANTE, alterando o valor do objeto atual [LINHA 0] para o objeto com o id que o player trocou [LINHA 1]
				image_blend = c_blue;//Alterando a cor do slot caso o player tenha tocado	
				obj_player.carregando_comando=false; //O player nao esta mais carregando um 
			}

	}
}


//Repetição para verificar se as variaveis estao no local certo
for(var i=0;i<obj_npc_desafios.tamanho;i++){
	if(obj_npc_desafios.desafio[# i, 0]==obj_npc_desafios.desafio[# i, 1]){
		cont++;	//Se estiver no local certo, o cont aumenta
	}
}

if(cont==obj_npc_desafios.tam_vetor_que_nao_quero){ //Vai verificar se o cont esta igual a quantidade de comandos
	show_message("Parabens!!! Você conseguiu");	
}
