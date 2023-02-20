///@desc scr_criar_questao(questao_id, nome_da_variavel_que_armazena_as_respostas)
function scr_criar_questao(argument0, argument1) {

	///@param questao_id
	///@param nome_da_variavel_que_armazena_as_respostas

	var iid = argument0;
	var nome_respostas = argument1;


	for(var i = 0; i<array_length_1d(nome_respostas);i++){
		if(i==0){
			global.questoes_index[# iid, respostas.enunciado] = nome_respostas[i];
		}else if(i==1){
			global.questoes_index[# iid, respostas.resposta1] = nome_respostas[i];	
		}else if(i==2){
			global.questoes_index[# iid, respostas.resposta2] = nome_respostas[i];	
		}else if(i==3){
			global.questoes_index[# iid, respostas.resposta3] = nome_respostas[i];	
		}else if(i==4){
			global.questoes_index[# iid, respostas.resposta4] = nome_respostas[i];	
		}else if(i==5){
			global.questoes_index[# iid, respostas.resposta5] = nome_respostas[i];	
		}else if(i==6){
			global.questoes_index[# iid, respostas.resposta6] = nome_respostas[i];	
		}else if(i==7){
			global.questoes_index[# iid, respostas.resposta7] = nome_respostas[i];	
		}else if(i==8){
			global.questoes_index[# iid, respostas.resposta8] = nome_respostas[i];	
		}else if(i==9){
			global.questoes_index[# iid, respostas.resposta9] = nome_respostas[i];	
		}else if(i==10){
			global.questoes_index[# iid, respostas.resposta10] = nome_respostas[i];	
		}else if(i==11){
			global.questoes_index[# iid, respostas.resposta11] = nome_respostas[i];	
		}else if(i==12){
			global.questoes_index[# iid, respostas.resposta12] = nome_respostas[i];	
		}else if(i==13){
			global.questoes_index[# iid, respostas.resposta13] = nome_respostas[i];	
		}else if(i==14){
			global.questoes_index[# iid, respostas.resposta14] = nome_respostas[i];	
		}
	}




}
