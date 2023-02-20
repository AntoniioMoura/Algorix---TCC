/// @description Insert description here
// You can write your code in this editor


//Fazendo olhar para o player
var olhar = 0;
if (instance_exists(obj_player)) {
	if (x > obj_player.x) {
		 image_xscale = -1;	
		 olhar = -1;
	} else {
		image_xscale = 1;
		olhar = 1;
	}
}

var x1 = x-80*distancia_colisao;
var y1 = y - 60*altura_colisao;
var x2 = x+80*distancia_colisao;
var y2 = y + 60*altura_colisao;

var aparecer = collision_rectangle(x1-200,y1,x2+200,y2,obj_player,true,false);
var alcance = collision_rectangle(x1,y1,x2,y2,obj_player,true,true);
var start_dialogue = keyboard_check_pressed(vk_space);
	
if (aparecer) {
		if (aparecendo) {
		sprite_index = spr_player_start;
		if (image_index >= image_number-1) {
			sprite_index = sprite;	
			aparecendo = false;
		}
	}
}


if (alcance) {
	if (start_dialogue || iniciar_automaticamente) {
		iniciar_automaticamente = false;
		if (text == noone) // Se o texto não existir, criamos ele
		{
			text = instance_create_layer(x, y, "texto", obj_text);
			text.text = npc_text; // O texto do objeto texto recebe o texto do npc			
			// Vamos fazer o npc terminar o diálogo
			text.pagina_limite = array_length(npc_text)-1; // Pegando total de páginas
			// Alternando estado			
		
		}

		else if (text.pagina >= text.pagina_limite) // Se passar do total de textos/páginas
		{
			ativar=false;
			instance_destroy(text); // Destruimos o text
			text = noone; // Voltamos ao estágio inicial
			alcance.estado=state.parado;
		}
	}
	// Parando o player, para que ele não se mecha durante o diálogo
	if (text != noone)
	{
		// A função collision_rectangle, nos retorna o ID do player, então podemos usar ela para identifica-lo
		alcance.estado = state.dialogo;
	}
}
/*
	Criamos uma área de colisão maior para tornar mais fácil o acessoa ao diálogo
*/
if(instance_exists(obj_player)){
	if(alcance){
		obj_player.pode_pular=false;	
	}else{
		obj_player.pode_pular=true;	
	}
}