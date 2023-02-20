/// @description Insert description here
// You can write your code in this editor




/*
//----------Adicionando colisão horizontal
if(place_meeting(x+velh,y,obj_plat)){
	while(!place_meeting(x+sign(velh),y,obj_plat)){
		x+=sign(velh);	
	}
	velh=0;
}

//----------Adicionando colisão vertical
if(place_meeting(x,y+velv,obj_plat)){
	while(!place_meeting(x,y+sign(velv),obj_plat)){
		y+=sign(velv);	
	}
	velv=0;
}

//----------Adicionando colisão com slot
if(place_meeting(x,y,obj_slot)){
	while(!place_meeting(x,y,obj_slot)){
		y+=sign(velv);	
		//estado = state.parado;
	}
	velv=5;
}

/*
//Checando se devo ser controlado
if(!place_meeting(x,y,obj_dica)){
	controlado = false;	
}
*/

//Adicionando aceleração no X e Y
//x+=velh;
//y+=velv;
//Limitando o X do player para que ele nao possa sair da room pelas laterais

x = clamp(x,0+sprite_width/2, room_width-sprite_width/2);
//y = clamp(y,0+sprite_height/2, room_height-sprite_height/2);




