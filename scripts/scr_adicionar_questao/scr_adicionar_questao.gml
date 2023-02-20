///@desc scr_adicionar_questao(nao_quero_essas_respostas,id_questao,tamanho_do_inventario,nome_do_objeto)
///@param nao_quero_essas_respostas
///@param id_questao
///@param tamanho
///@param nome
function scr_adicionar_questao(argument0, argument1, argument2, argument3) {
	var fora_da_questao = argument0;	//Essa variavel vai controlar o indice das respostas que nao vao estar dentro da questao
	var id_questao = argument1;	//Essa variavel representa a questao que vai ser inserida
	var tamanho = argument2;
	var nome = argument3;

	var tam_vetor = array_length_1d(fora_da_questao); //Verificando qual o tamanho do vetor das questoes que nao vao ser incluidas

	for(var i=0; i<=tamanho; i++){
		achou = false; //Variavel controladora se achou o numero no vetor
		var resposta_atual = nome.desafio[# i, 0];
		//Checando se existe alguma resposta nesse slot
		if(resposta_atual==0){ //Se 
			for(var j=0;j<tam_vetor;j++){ //Repetição para verificar se achou os itens que a pessoa passou pelos paramentros
				if(i==fora_da_questao[j]){
					var achou = true;
					break;
				}
			}
			if(achou){ //Se achou os indices, entao vai inserir as repostas no J=1
				nome.desafio[# i, 1] = global.questoes_index[# id_questao, i];
			}else
				nome.desafio[# i, 0] = global.questoes_index[# id_questao, i];
			
		
		}
	}






}
