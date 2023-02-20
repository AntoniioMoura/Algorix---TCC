/// @description Insert description here
// You can write your code in this editor
randomize();
valor=1;
coletado=false;
criado = false;
chao = false;
a = irandom(100);
velh=random_range(1,4);
	if(a>=50){	
		velh*=-1;
	}
velv=-1;
tocar = true;

ativo = false; // variavel para ativar as moedas
alarm[0]=room_speed/2; // Esse alarm vai rodar para impedir que o jogador pegue as moedas instantaneamente