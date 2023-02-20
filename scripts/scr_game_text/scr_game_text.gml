///@param text_id
function scr_game_text(_text_id){

	switch(_text_id) {
		
		//Dialogotrue
		case "dialogotrue":
			scr_text("Sim, João. Pretendo ir à praia amanhã antes do horário de almoço", "blue kid happy");
				
			scr_text("Por que você quer ir à praia amanhã, Maria?...", "blue kid sad", true);
				scr_option("Por que sim?", "dialogo1 - sim");
				scr_option("Não interessa pra vc palhaço", "dialogo1 - nao");
				scr_option("Vou cuidar do Alex", "dialogo1 - alex");
		break;
		
			case "dialogo1 - sim":
				scr_text("Mano... Talvez porque eu esteja cansada de passar o dia inteiro cuidando das tarefas domésticas, enquanto você, bonitinho, fica na rua com a molecada e não lava um copo sequer. Mas amanhã será diferente", "blue kid happy");
			break;
	
			case "dialogo1 - nao":
				scr_text("Vai lavar uma louça");
				scr_text("vermelho, azul, preto");
					scr_text_color(0, 7, c_red, c_red, c_red, c_red);
					scr_text_color(10, 13, c_blue, c_blue, c_blue, c_blue);
					scr_text_color(16, 20, c_black, c_black, c_black, c_black);
			break;
	
				case "dialogo1 - alex":
					scr_text("Que historia é essa Maria??? Quem é Alex?", "blue kid sad", true);
						scr_text_color(0, 46, c_red, c_red, c_red, c_red);
						scr_text_shake(0, 45);
					scr_text("Que colou seu CU com durex KKKKKKKKKKKKK", "blue kid happy");
						scr_text_float(0, 45);
				break;
		
		//Dialogo-2
		case "dialogo-2":
			scr_text("dialogo 2");
		break;
		
		case "dialogo-inicial":
			scr_text("Que bom que você conseguiu retornar, antes de iniciarmos, preciso que você colete algumas moedas para mim", "blue kid sad", true, snd_dialogue_robot_1);
		break;
		
		case "dialogo-3":
			scr_text("Onde eu estou? Quem está aí?","blue kid happy");
			scr_text("Seja bem vindo ao planeta Algorix meu nobre guerreiro","blue kid sad", true, snd_dialogue_robot_1);
			
			scr_text(" Ahhh Um robô falante?? Espera aí, Guerreiro? Que história é essa? Onde estou? e quem é você? ","blue kid happy");
			scr_text(" Mil perdões, deixe-me apresentar, me chamo Charles, fui o responsável por trazê-lo até aqui. Você tem altas chances de ser O escolhido, o guerreiro da profecia.","blue kid sad", true);
			
			scr_text("Escolhido? Eu preciso ir embora, tenho que estudar para a prova de recuperação de algoritmos, eu vou conseguir dessa vez", "blue kid happy");
			scr_text("Vejo bondade em você rapaz, isso que te torna tão especial, estamos com um problema e creio que você é nossa única esperança, por favor nos ajude.","blue kid sad", true);
			
			scr_text("Nãoooo, por favor me leva para casa, eu ainda estou abalado por não ter conseguido resolver nada na prova","blue kid happy");
			scr_text("Não se preocupe rapaz, o nosso planeta não se chama Algorix à toa, nós somos os anfitriões da lógica de programação, nós os Algorixianos que criamos tudo sobre Algoritmos.","blue kid sad", true);
	
			scr_text("Sei não ein, é verdade isso? Hum parece suspeito","blue kid happy");
			scr_text("Você está conversando com um robô altamente inteligente, até agora não percebeu isso? Já calculei todas as possibilidades de você ir bem na prova se aprender algoritmo comigo","blue kid sad", true);
			
			scr_text("Você está me convencendo, você iria me ensinar algoritmos mesmo? Eu tenho muita dificuldade, já reprovei 6 vezes na disciplina, você sabe o que significa isso?","blue kid happy");
			scr_text("Sim meu jovem, você apenas aprendeu da maneira errada. Me siga vou te explicar o básico.","blue kid sad", true);
		break;
		
		
		case "dialogo-4":

			scr_text("Ahhhh. Muito obrigado pelas moedas","blue kid sad", true, snd_dialogue_robot_2);
			scr_text("Vamos começar do básico, você sabe o que é algoritmo?","blue kid sad", true, snd_dialogue_robot_3);
			
				//scr_option("É uma sequência de instruções infinitas e bem definidas", "errado");
				//scr_option("Uma forma de representar os numerais", "errado");
				scr_option("É uma sequência de instruções bem definidas", "certo");
		break;
		
				case "certo":
					scr_text("Parabéns, é exatamente isso","blue kid sad", true, snd_dialogue_robot_4);
					scr_text("Os algoritmos computacionais são passos que um computador consegue interpretar para concluir uma tarefa","blue kid sad", true, snd_dialogue_robot_5);		
					scr_text("Alguns desses passos são: Condicionais, estrutura de repetições, entrada e saída de dados e vários outros.","blue kid sad", true, snd_dialogue_robot_6);
					scr_text("É através dessa estrutura que será definido o comportamento de um sistema.","blue kid sad", true, snd_dialogue_robot_7);			
					scr_text("Por enquanto é isso. Agora vá e me traga mais moedas, e cuidado com as armadilhas","blue kid sad", true, snd_dialogue_robot_8);
				break;
				
				case "errado":
					scr_text("Errado, foi por pouco, vou te explicar melhor","blue kid sad", true, snd_dialogue_robot_1);
					scr_text("Um algoritmo pode ser entendido como uma série de etapas lógicas para resolver um determinado problema, Isso é aplicável em vários âmbitos do dia a dia, o exemplo mais famoso para o seres humanos é o processo de troca de uma lâmpada","blue kid sad", true);
					scr_text("Primeiro você pega a escada, coloca a escada no local, pega a lâmpada nova, sobre na escada, remove a lâmpada velha, colocar a lâmpada nova e assim por diante","blue kid sad", true);
					scr_text("todos esses passos formam um Algoritmo, ou seja, uma sequência de passos finitos no intuito de concluir uma tarefa pré definida anteriormente.","blue kid sad", true);		
					scr_text("Passando para o nosso cenário de programação. Os algoritmos computacionais são passos que um computador consegue interpretar para concluir uma tarefa","blue kid sad", true);		
					scr_text("Alguns deles são: Condicionais, estrutura de repetições, entrada e saída de dados e vários outros. É através dessa estrutura que será definido o que fará um um programa.","blue kid sad", true);
				break;
				
		case "dialogo-5":
			scr_text("Uma das etapas mais importantes na criação de um algoritmo computacional é a criação de variáveis, sua finalidade é armazenar os dados ou informações por um determinado período", "blue kid sad", true);
		break;
		
		case "dialogo-6":
			scr_text("Os comandos leia e escreva são responsáveis pela entrada e saída de dados, é através dele que os usuários irão interagir com o sistema","blue kid sad", true);
		break;
		
		case "dialogo-7":
			scr_text("Uma estrutura condicional é baseada em uma condição que se for atendida, o algoritmo toma uma decisão, essas condições são representadas por expressões lógicas que deverão ser verdadeiras ou falsas", "blue kid sad", true);
		break;
		
		case "dialogo-8":
			scr_text("A estrutura de repetição permite executar mais de uma vez o mesmo comando ou conjunto de comandos, de acordo com uma condição ou com um contador O seu conceito principal é esse, porém ele vai muito além disso, possibilitando inúmeras formas de resolver um problema","blue kid sad", true);
		break;
		
	}
}