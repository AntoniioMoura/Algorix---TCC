/// @description Insert description here
// You can write your code in this editor
//ativar_questao = false;
//--------------------Idquestao é uma variavel criada no proprio objeto, para identificar o id que a questao foi inserida
//------------nao se esqueça ----------------------------

//Criando variavel para saber o tamanho da questao, essa variavel, esta vindo la das variaveis padroes, 
//ela esta pegando o array da questao ja escrita 
tamanho = array_length_1d(questao);
//Criando a grid do desafio do NPC
desafio = ds_grid_create(tamanho,2); 
ds_grid_clear(desafio,0); //Zerando a grid
nome_do_objeto = obj_questao;

//Quais respostas você não quer que adicione na pergunta?
nao_quero_essas_respostas =[3,6];

tam_vetor_que_nao_quero = array_length_1d(nao_quero_essas_respostas);

//Adicionando questao
scr_adicionar_questao(nao_quero_essas_respostas,id_questao,tamanho,nome_do_objeto);


conteudo = "Parabéns!!! Você acertou"; //O que o npc vai falar
texto = false;	//verificar quando o player acertou