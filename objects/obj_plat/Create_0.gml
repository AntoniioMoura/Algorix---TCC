/// @description Insert description here
// You can write your code in this editor



if(bolhaespinho){
var valor=0;
pedaco = 6
ang = 90;
rot = 0;
filhos[pedaco] = 0;

spd = 3.5;
direcao = -1;
//Criando meus pedaços
for (var i=0; i<pedaco; i++){
	if(i<pedaco-1){
		valor=11;
		filhos[i]= instance_create_layer(x+7,y+valor, "trilhos",obj_trilho_bola_de_espinhos);		
		filhos[i].image_angle=90;
		filhos[i].distancia=valor;
	}if i>=pedaco-1{
		valor=22;
		filhos[i]= instance_create_layer(x+7,y+valor, "traps",obj_bola_de_espinhos);		
		filhos[i].image_angle=90;
		filhos[i].distancia=valor;	
	}
}
}