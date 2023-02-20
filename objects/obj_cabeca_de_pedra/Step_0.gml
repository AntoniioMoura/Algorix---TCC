/// @description Insert description here
// You can write your code in this editor


//EU PODERIA TER CRIADO UM SCRIPT OU JUNTADO OS DOIS, POREM FIZ NO CONTROL C E V MESMO

if(horizontal){
	switch(estado){
		case "parado":
		if(!piscar){ //Variavel verificando se pode piscar enquanto a pedra esta parada
			sprite_index=spr_cabeca_de_pedra;	
		}
			if(ativar){
				alarm[0]=room_speed; //TRocando de estado
				ativar=false; //Possibilitando a ativação do alarm
				time = 20;	  //Setando para 20 o tempo de ativação do piscar enquanto a pedra estiver parada
				piscar=true;  //Ativando a piscar quando a pedra estiver parada
			}
				time--;
				if(time<=0 && piscar){ /// Se o tempo "20" for menor que 0 e poder piscar
					sprite_index=spr_cabeca_de_pedra_blink; //Sprite de piscar
					if(image_index>image_number-1){ //Verificando quando acaba a animação do piscar
						piscar = false;	//nao pode piscar mais
					}
				}
			break;
			
		case "esquerda":
			
			if(place_meeting(x-1,y,obj_plat)){
				sprite_index = spr_cabeca_hit_left;
				if(image_index>image_number-1){
					estado="parado";
				}
			}else{
				x -= 4;
				if(place_meeting(x-4,y,obj_player)){
					obj_player.x-=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
			
		case "direita":
			if(place_meeting(x+1,y,obj_plat)){
				sprite_index = spr_cabeca_hit_right;
				if(image_index>image_number-1){
					estado="parado";	
				}
			}else{
				x += 4;
				if(place_meeting(x+4,y,obj_player)){
					obj_player.x+=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
	}	
}



if(vertical){
	switch(estado){
		case "parado":
		if(!piscar){ //Variavel verificando se pode piscar enquanto a pedra esta parada
			sprite_index=spr_cabeca_de_pedra;	
		}
			if(ativar){
				alarm[0]=room_speed; //TRocando de estado
				ativar=false; //Possibilitando a ativação do alarm
				time = 20;	  //Setando para 20 o tempo de ativação do piscar enquanto a pedra estiver parada
				piscar=true;  //Ativando a piscar quando a pedra estiver parada
			}
				time--;
				if(time<=0 && piscar){ /// Se o tempo "20" for menor que 0 e poder piscar
					sprite_index=spr_cabeca_de_pedra_blink; //Sprite de piscar
					if(image_index>image_number-1){ //Verificando quando acaba a animação do piscar
						piscar = false;	//nao pode piscar mais
					}
				}
			break;
			
		case "baixo":
			
			if(place_meeting(x,y+1,obj_plat)){
				sprite_index = spr_cabeca_hit_bottom;
				if(image_index>image_number-1){
					estado="parado";
				}
			}else{
				y += 4;
				if(place_meeting(x,y+4,obj_player)){
					obj_player.y+=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
			
		case "cima":
			if(place_meeting(x,y-1,obj_plat)){
				sprite_index = spr_cabeca_hit_top;
				if(image_index>image_number-1){
					estado="parado";	
				}
			}else{
				y -= 4;
				if(place_meeting(x,y-4,obj_player)){
					obj_player.y-=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
	}	
}
	
//Voltas	
	
	
if(voltas){
	switch(estado){
		case "parado":
		if(!piscar){ //Variavel verificando se pode piscar enquanto a pedra esta parada
			sprite_index=spr_cabeca_de_pedra;	
		}
			if(ativar){
				alarm[0]=room_speed; //TRocando de estado
				ativar=false; //Possibilitando a ativação do alarm
				time = 20;	  //Setando para 20 o tempo de ativação do piscar enquanto a pedra estiver parada
				piscar=true;  //Ativando a piscar quando a pedra estiver parada
			}
				time--;
				if(time<=0 && piscar){ /// Se o tempo "20" for menor que 0 e poder piscar
					sprite_index=spr_cabeca_de_pedra_blink; //Sprite de piscar
					if(image_index>image_number-1){ //Verificando quando acaba a animação do piscar
						piscar = false;	//nao pode piscar mais
					}
				}
			break;
			
		case "esquerda":
			
			if(place_meeting(x-1,y,obj_plat)){
				sprite_index = spr_cabeca_hit_left;
				if(image_index>image_number-1){
					estado="parado";
					direcao="cima";
				}
			}else{
				x -= 4;
				if(place_meeting(x-4,y,obj_player)){
					obj_player.x-=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
		case "direita":
			if(place_meeting(x+1,y,obj_plat)){
				sprite_index = spr_cabeca_hit_right;
				if(image_index>image_number-1){
					estado="parado";	
					direcao="baixo";
				}
			}else{
				x += 4;
				if(place_meeting(x+4,y,obj_player)){
					obj_player.x+=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;		
			
		case "baixo":
			
			if(place_meeting(x,y+1,obj_plat)){
				sprite_index = spr_cabeca_hit_bottom;
				if(image_index>image_number-1){
					estado="parado";
					direcao="esquerda";
				}
			}else{
				y += 4;
				if(place_meeting(x,y+4,obj_player)){
					obj_player.y+=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
			
		case "cima":
			if(place_meeting(x,y-1,obj_plat)){
				sprite_index = spr_cabeca_hit_top;
				if(image_index>image_number-1){
					estado="parado";	
					direcao="direita";
				}
			}else{
				y -= 4;
				if(place_meeting(x,y-4,obj_player)){
					obj_player.y-=4;	
				}
				time--;
				if(time<=0){
					sprite_index=spr_cabeca_de_pedra_blink;	
					if(image_index>image_number-1){
						sprite_index=spr_cabeca_de_pedra;
						time=room_speed;
					}
				}
			}
			break;
	}
}

//Adicionando velocidade ao colidir com o player
/*
if(instance_exists(obj_player) && estado!="parado"){
	if(place_meeting(x+4,y,obj_player)){
		obj_player.x+=4;	
	}else if(place_meeting(x-4,y,obj_player)){
		obj_player.x-=4;	
	}else if(place_meeting(x,y-4,obj_player)){
		obj_player.y-=4;	
	}else if(place_meeting(x,y+4,obj_player)){
		obj_player.y+=4;	
	}
}
*/
	

	
