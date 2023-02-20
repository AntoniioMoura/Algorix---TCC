/// @description Insert description here
// You can write your code in this editor

switch(estado){
	case "baixo":
		y+=1;
		if(!place_meeting(x-40,y+40,criador) && place_meeting(x+40,y-40,criador) && !place_meeting(x+40,y+40,criador)){
			estado = "direita";
		}
		break;
	case "direita":
		x+=1;
		if(!place_meeting(x+40,y+40,criador) && place_meeting(x-40,y-40,criador) && !place_meeting(x+40,y-40,criador)){
			estado="cima";	
		}
		break;
	
	case "cima":
		y-=1;
		if(!place_meeting(x+40,y-40,criador) && place_meeting(x-40,y+40,criador) && !place_meeting(x-40,y-40,criador)){
			estado="esquerda"
		}
		break;
	
	case "esquerda":
		x-=1;
		if(!place_meeting(x-40,y-40,criador) && place_meeting(x+40,y+40,criador) && !place_meeting(x-40,y+40,criador)){
			estado="baixo"
		}
		break;
}



