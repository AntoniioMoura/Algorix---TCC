/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_text(xstart-120,ystart-150,desafio[# 0 ,0]);
draw_text(slot_resposta.xstart-64,ystart-150,"Comandos");

	for (var i=0 ;i<tamanho; i++){	//Colunas
		var w = 120;
		sep = string_height("oi");
		for(var j=0;j<2;j++){
			draw_text_ext(w*i,w*j+j , desafio[# i, j],sep,w);	
		}
	}

