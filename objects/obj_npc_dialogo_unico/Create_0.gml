
// Vamos fazer uma forma de o NPC ter vários diálogos
if (entrada == 1) {
	text_um = [
	"Olá Jogador. Seja bem vindo a Algorix, varias coisas estão por vir diante de seus grandes olhos cheio de alegria",
	"Um planeta repleto de perigos e aventuras",
	"Aqui você enfrentará varios desafios",
	"E passará por diversas provas relacionadas a algoritmos",
	"Boa sorte!!! Você irá precisar HAHAHA"	
	];
} else if (entrada == 2) {
	text_um=[
		"Mano",
		"Texto dois namoral",
		"Ajuda ai"
	];
} else if(entrada == 3) {
	text_um=[
		"Texto 3",
		"era uma vez",
		"uma princesa",
		"Muito inteligente",
		"Fim"
	];
}

// Nosso array terá vários arrays dentro dele isso se chama array 2D
npc_text = text_um;
ativar = true;
estado = 0;
ativo = false;
aparecendo = true;
sprite_index = spr_npc_canibal104;
iniciar_automaticamente = true;
/*
	Com esse tipo de sistema, de array 2D, podemos criar sistemas de diálogos que mudam comforme o humor do NPC
*/
text = noone;


