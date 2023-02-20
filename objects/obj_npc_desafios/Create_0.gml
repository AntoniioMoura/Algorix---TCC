/// @description Insert description here
// You can write your code in this editor

mostrar = true; // Variavel para mostrar quando colidir com o npc
//--------------------Idquestao é uma variavel criada no proprio objeto, para identificar o id que a questao foi inserida
//------------nao se esqueça ----------------------------

//Criando variavel para saber o tamanho da questao, essa variavel, esta vindo la das variaveis padroes, 
//ela esta pegando o array da questao ja escrita 
tamanho = array_length_1d(questao);
//Criando a grid do desafio do NPC
desafio = ds_grid_create(tamanho,2); 
ds_grid_clear(desafio,0); //Zerando a grid

nome = obj_npc_desafios;
//Quais respostas você não quer que adicione na pergunta?
nao_quero_essas_respostas =[1,3];

tam_vetor_que_nao_quero = array_length_1d(nao_quero_essas_respostas);

//Adicionando questao
scr_adicionar_questao(nao_quero_essas_respostas,id_questao,tamanho,nome);


	//Iniciando o "Inventario de comandos"
	var tam = ds_grid_width(desafio); // PEgando o tamanho da grid
	for(var i=1;i<tam;i++){
		var w = sprite_get_width(spr_slot);
		    pos_x = w*i; //Adicionando espaçamento entre os slots
			slot_pergunta = instance_create_layer(pos_x, ystart-125,"particulas",obj_slot); //Intanciando um slot para colocar uma pergunta
			slot_pergunta.var_slot=i;
			slot_pergunta.pos_x = pos_x;
			slot_pergunta.resposta=false; //Variavel para saber se é uma resposta ou pergunta
			slot_pergunta.pos_y = ystart-125;
		}
	
	
	
	//---------Adicionando as 
	//Variaveis controladoras das respostas
	var lado_resposta = 64; //Variavel que representa o espaçamento que precisa dar entre o enunciado e os comandos
	var espaco_entre_comandos = 32; //Espaço entre os comandos
	for (var i=1;i<tam;i++){
		if(desafio[# i, 1]!=0){
			var pos_resposta = lado_resposta+espaco_entre_comandos+pos_x;
			slot_resposta = instance_create_layer(pos_resposta, ystart-125,"particulas",obj_slot); //Intanciando um slot para colocar uma pergunta
			espaco_entre_comandos+=80;	//Adicionando espaço entre os slot
			slot_resposta.var_slot=i;	//Guardando o id do slot 
			slot_resposta.resposta=true; //Variavel para saber se é uma resposta ou pergunta
			slot_resposta.pos_x = pos_resposta;	//Guardando a posição x do slot
			slot_resposta.pos_y = ystart-125;	//Guardando a posição y do slot
		}
	}
	

	

