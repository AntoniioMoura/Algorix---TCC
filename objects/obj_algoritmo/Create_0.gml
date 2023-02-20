/// @description Insert description here
// You can write your code in this editor
questao1 = ["Joao queria dormir","Repita","Fimse","Senao","entao","casa"];
questao2 = ["Como","penis","pato","entao"];
questao3 = ["Maria que trocar lampada","Pegar lampada nova","Pegar escada","Andar ate o local","Ecostar escada","Subir na escada","Retirar lampada velha","Colocar lampada nova","Descer da escada"];
questao4 = ["Questao sobre repita","repita","x <- x+1","escreva(x:3)","se x = 10","entao","interrompa","fimse","fimrepita"];
questao5= ["Questão condicional","se","3<4","entao","escreva","(\"3 é menor que 4\")","fimse"];
enum questoes{
	questao1,
	questao2,
	questao3,
	questao4,
	questao5,
	questao6,
	questao7,
	questao8,
	questao10,
	total
}


enum respostas{
	enunciado,
	resposta1,
	resposta2,
	resposta3,
	resposta4,
	resposta5,
	resposta6,
	resposta7,
	resposta8,
	resposta9,
	resposta10,
	resposta11,
	resposta12,
	resposta13,
	resposta14,
	total
}

global.questoes_index = ds_grid_create(questoes.total, respostas.total);
ds_grid_clear(global.questoes_index,0);

scr_criar_questao(questoes.questao1,questao1);
scr_criar_questao(questoes.questao2,questao2);
scr_criar_questao(questoes.questao3,questao3);
scr_criar_questao(questoes.questao4,questao4);
scr_criar_questao(questoes.questao5,questao5);