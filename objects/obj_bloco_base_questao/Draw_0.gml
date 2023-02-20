/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_quiz);
if(!pode_criar_perguntas){
	draw_set_alpha(1);
	if(faixa==1){
		draw_rectangle(obj_camera.x+200,obj_camera.y+265,obj_camera.x+room_width-200,obj_camera.y+300,false);	
	}
	if(faixa==2){
		draw_rectangle(obj_camera.x+200,obj_camera.y+305,obj_camera.x+room_width-200,obj_camera.y+340,false);	
	}
	if(faixa==3){
		draw_rectangle(obj_camera.x+200,obj_camera.y+345,obj_camera.x+room_width-200,obj_camera.y+380,false);	
	}
	draw_set_alpha(.6);
	draw_rectangle_color(obj_camera.x+200,obj_camera.y+200, obj_camera.x+room_width-200,obj_camera.y+400,c_green,c_white,c_green,c_white,false);
	draw_set_alpha(1);
	draw_rectangle(obj_camera.x+200,obj_camera.y+200, obj_camera.x+room_width-200,obj_camera.y+400,true);
		
		draw_set_font(fnt_titulo);
		draw_text_color(obj_camera.x+220,obj_camera.y+210,"O que é um Algoritmo?",c_black,c_black,c_black,c_black,1);
		draw_set_font(fnt_quiz);
		draw_text_color(obj_camera.x+220,obj_camera.y+270,"A: Um tipo de linguagem de programação",c_black,c_black,c_black,c_black,1);
		draw_text_color(obj_camera.x+220,obj_camera.y+310,"B: Sequencia de passos para concluir uma tarefa",c_black,c_black,c_black,c_black,1);
		draw_text_color(obj_camera.x+220,obj_camera.y+350,"C: Um formato de arquivo",c_black,c_black,c_black,c_black,1);
		
}

draw_set_font(-1);
