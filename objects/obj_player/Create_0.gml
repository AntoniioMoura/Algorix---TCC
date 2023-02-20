/// @description Insert description here
// You can write your code in this editor
pode_pular=true;
sprite_index=spr_player_start;

//----------Gravidade e acelerações
grav = .8;	//Gravidade do player
acel_chao = .2;		//Aceleração no chão
acel_ar = .08;		//Aceleração no ar
acel = acel_chao;	//Aceleração padrão
deslize = 1.5;	//Aceleração na parede
avanco_h = 0;	//


//----------Limite das velocidades
max_velv = 12; //Velocidade maxima vertical
max_velh = 5.5; //Velocidade maxima horizontal


//----------Adicionando bonus de pulo
limite_pulo = 3;
timer_pulo = 0;

//Configurando buffer do pulo
limite_buffer=6;
timer_queda = 0;
buffer_pulo=false;

//Configurando pulo na parede 
limite_parede = 6;
timer_parede = 0;

//----------Variaveis de controle
chao = false; // Variavel para saber se o player está no chão ou não
yscale = 1;	//Amassando o player
xscale = 1; //Amassando o player
carga = 1; //Cargas do dash
parede_dir = false; //Variavel para ficar na parede direita
parede_esq = false;	//Variavel para ficar na parede esquerda
ultima_parede =0; //Variavel para identificar qual foi a ultima parede que o player encostou
ver = 1; //Variavel para controlar pra onde o player esta olhando

morrer = true;
nascer = true;



//----------Criando estados do player
enum state{
	parado,movendo,nascer, morte,voltar, questao, dialogo,	
}
estado = state.nascer;




//Trabalhando com o slot
armazena=0; //variavel para armazenar o valor do slot
carregando_comando=0;	//Variavel para saber se o player esta carregando algum comando
slot = noone;	//Variaavel para armazenar o ID do slot que ele tocou

ponto_fase=0;
//Variavel para verificar se vai ativar a questao ou nao
questao = true;