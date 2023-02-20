/// @description Insert description here
// You can write your code in this editor

//Verificando se o player tocou no caixa de comando
if(instance_exists(obj_questao) && instance_exists(obj_player)){
	if(place_meeting(x,y,obj_player)){	//Se o player tocou
		if(resposta){	//E se ele tocou em uma resposta/comando
			if(ativo){	//Se o comando estiver ativo, ou seja, nao foi inserido no codigo
				for(var i=1;i<obj_questao.tamanho;i++){		//Repetição para ir em toda grid verificando qual o primeiro zero
					if(obj_questao.desafio[# i, 0]==0 ){	//Se achou algum zero
						obj_questao.desafio[# i, 0] = obj_questao.desafio[# var_slot, 1];	//eEntao insere o valor do comando que foi colidino no primeiro slot q é zero
						ativo=false;	//o comando se torna false. ou seja, nao pode ser inserido na lista
						break;	//Para de procurar quando insere o primeiro
					}
				}
			 }else{ //Se ativo for false
				for(var i=1;i<obj_questao.tamanho;i++){	//Vai rodar por toda a grid
					if(obj_questao.desafio[# i, 0]==obj_questao.desafio[# var_slot, 1]){ //Se o comando que foi colidido ja estiver na lista
						obj_questao.desafio[# i, 0] = 0; //Entao o comando na lista recebe zero
						ativo=true;	//E o comando se torna true, ou seja, ele pode ser inserido na lista novamente
						break;	//encerra a repetição
					}	
				}
	
			}
		}
	}
}

var cont=0;
//Verificando se o jogador acertou
if(instance_exists(obj_questao)){
	for(var i=1; i<obj_questao.tamanho;i++){
		if(obj_questao.desafio[# i, 0]==obj_questao.desafio[# i, 1]){
			cont++;	
		}
	}
	if(cont==obj_questao.tam_vetor_que_nao_quero){
		obj_questao.texto = true;
	}
}