/// @description Insert description here
// You can write your code in this editor
if(horizontal){
	if(place_meeting(x+2,y,obj_plat)){
		estado="esquerda";	
	}else{
		estado="direita";	
	}

}

if(vertical){
	if(place_meeting(x,y+2,obj_plat)){
		estado="cima";	
	}else{
		estado="baixo";	
	}
}

if(voltas){
	estado = direcao;
}

ativar = true;			