/// @description Insert description here
// You can write your code in this editor

if(criar_trilho){
	if(criar_trilho_v){
	if(subir){
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x,y-espacamento*i,"trilhos",obj_trilho_saw);	
		}
	}else{
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x,y+espacamento*i,"trilhos",obj_trilho_saw);	
		}
	}
	criar_trilho=false;
}else{
	if(direita){
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x+espacamento*i,y,"trilhos",obj_trilho_saw);	
		}
	}else{
		for(var i=0;i<qtd_trilho;i++){
			instance_create_layer(x-espacamento*i,y,"trilhos",obj_trilho_saw);	
		}
	}
	criar_trilho=false;	
}
}
	
switch(estado){
	case "aumentando":
		sprite_index= spr_saw_voltando;
		if(subindo){
			y+=velocidade;
			if!(place_meeting(x,y+espacamento,obj_trilho_saw)){
				estado="diminuindo";	
			}
		}else{
			x+=velocidade
			if!(place_meeting(x+espacamento,y,obj_trilho_saw)){
				estado="diminuindo";	
			}	
		}
		break;
	case "diminuindo":
		if(subindo){
			sprite_index = spr_saw;
			y-=velocidade;
			if!(place_meeting(x,y-espacamento,obj_trilho_saw)){
				estado="aumentando";	
			}
		}else{
			x-=velocidade;
			if!(place_meeting(x-espacamento,y,obj_trilho_saw)){
				estado="aumentando";	
			}
		}
		break;		
	}