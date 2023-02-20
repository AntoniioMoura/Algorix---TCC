//Checando se o player está tocando no chão
/*
if(sprite_index==spr_player_start){
	if(image_number>image_index-1){
		sprite_index=spr_player_virtual_idle;
	}
}*/
if(keyboard_check_pressed(vk_pageup)){
	game_restart();	
}

if (keyboard_check_pressed(vk_escape)) {
	game_end();	
}

if(place_meeting(x,y,obj_plat)){
	estado=state.morte;	
}


chao = place_meeting(x,y+1,obj_plat);	
parede_dir = place_meeting(x+1,y,obj_plat);
parede_esq = place_meeting(x-1,y,obj_plat);


//Configurando o timer do pulo
if (chao) {
	timer_pulo = limite_pulo;	
	carga = 1;
} else if (timer_pulo > 0) { 
	timer_pulo--;	
}

if (parede_dir || parede_esq) {
	if (parede_dir) {
		ultima_parede=0;
	} else {
		ultima_parede=1;
	}
	timer_parede = limite_parede;
} else {
	if (timer_parede>0) {
		timer_parede--;	
	}	
}

//----------Configurando controles
var left,right,up,jump, jump_s;  

left=keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(ord(vk_up));

if (pode_pular) {
	jump = keyboard_check_pressed(vk_space);
} else {
	jump = -1;
}
jump_s = keyboard_check_released(vk_space);

//Configurando informações da movimentação
avanco_h = (right-left) * max_velh;

//Configurando a aceleração no chao e no ar
if (chao) {	
	acel = acel_chao;
} else {
	acel = acel_ar;	
}


//----------Criando a State Machine----------
switch(estado){
	case state.parado:
		velh = 0;
		velv = 0;
		//Adicionando a ação de pulo se o player estiver no chao
		if (jump && chao) {
			velv=-max_velv;	
		}
			
		//Adicionando gravidade no estado parado
		if (!chao) {
			velv+=grav;	
		}
			
		//Saindo do estado e indo para o estado movendo
		if (abs(velh) > 0 || abs(velv) > 0 || left || right || jump) {
			estado = state.movendo;	
		}
	break;
			
	case state.movendo:	
		pode_pular = true;
		
		if(abs(velh)>=0.5 && chao){
			sprite_index = spr_player_virtual_run;
		}
		if(abs(velh)<=1 && chao){
			sprite_index = spr_player_virtual_idle; 	
		}
		
		if(parede_dir && !chao && velv>0){
			sprite_index = spr_player_virtual_wall;	
		}
		
		if(parede_esq && !chao && velv>0){
			sprite_index = spr_player_virtual_wall;
			
		}
		
		if(velv<0 && !chao && (!parede_dir && !parede_esq)){
			sprite_index = spr_player_virtual_jump;		
		}
		if(velv>0 && !chao && (!parede_dir && !parede_esq)){
			sprite_index = spr_player_virtual_fall;
		}
		
				//Adicionando aceleração de movimento
					velh=lerp(velh, avanco_h, 0.11);

				
				if(abs(velh)>max_velh - .5 && chao){
					//Fazendo a poeira atras do player
					var chance = random(100);
					if(chance>95){
						for(var i=0; i<irandom_range(4,10); i++){
							var xx = random_range(x-sprite_width/2,x+sprite_width/2);
							instance_create_layer(xx,y,"particulas",obj_vel);
						}
					}
				}
				//Adicionando gravidade e deslize parede
				if(!chao && (parede_dir || parede_esq || timer_parede)){ // O player nao esta no chao mas esta na parede
					if(velv>0){ // Ta na parede e está caindo
						velv=lerp(velv,deslize,acel);
						//Fazendo a poeira atras do player
						var chance = random(100);
						if(chance>95){
							for(var i=0; i<irandom_range(4,10); i++){
								var onde = parede_dir-parede_esq;	//Criando a poeira na parede
								var xx = x+onde*(sprite_width/2);
								var yy = y+random_range(-sprite_height/4,0);
								instance_create_layer(xx,yy,"particulas",obj_vel);	
							}
						}
					}else{
						//Player esta subindo
						velv+=grav;
					}	
				
				
					//Pulando pelas paredes
					if(!ultima_parede && jump){ // O player está na parede e esta tentando pular
						velv = -max_velv;
						velh = -max_velh;
					//Criando poeira ao pular da parede direita
						for(var i=0; i<irandom_range(4,10); i++){
							var onde = parede_dir-parede_esq;	//Criando a poeira na parede
							var xx = x + sprite_width/2;
							var yy = y+random_range(-sprite_height/4,0);
							instance_create_layer(xx,yy,"particulas",obj_vel);	
						}
					}else if(ultima_parede && jump){
						velv = -max_velv;
						velh = max_velh;
						
						//Criando poeira ao pular da parede esquerda
						for(var i=0; i<irandom_range(4,10); i++){
							var onde = parede_dir-parede_esq;	//Criando a poeira na parede
							var xx = x - sprite_width/2;
							var yy = y+random_range(-sprite_height/4,0);
							instance_create_layer(xx,yy,"particulas",obj_vel);	
						}
					}
				}else if(!chao){ //Não estou no chao nem na parede
					velv+=grav;
				}
			
				//Pulando
				if(jump && (chao || timer_pulo)){
					
					//Deformando o player
					xscale = .8;
					
					
					velv=-max_velv;	
					
					
					
					//Criando poeira ao pular do chao
						for(var i=0; i<irandom_range(4,10); i++){
							var xx = random_range(x-sprite_width,x+sprite_width);
							instance_create_layer(xx,y,"particulas",obj_vel);
						}
				}
			
				//Pulando atravez do buffer Pulo
				if(jump){
					timer_queda=limite_buffer;	//Dando valor para o timer queda
				}
				if(timer_queda>0){				//Ativando o buffer caso timer queda for maior que zero
					buffer_pulo=true;	
				}else{							// Se for timer queda for menor que zero ele desativa o buffer
					buffer_pulo=false;	
				}
				if(buffer_pulo){ // Player pode pular com buffer
					if(chao || timer_pulo){
						velv=-max_velv;
						timer_pulo = 0; //Impedindo do player abusar do buffer do pulo
						timer_queda = 0 //Evitando de pular varias vezes no ar
						
						//Criando poeira quando o player sair do chao
							for(var i=0; i<irandom_range(4,10); i++){
								var xx = random_range(x-sprite_width,x+sprite_width);
								instance_create_layer(xx,y,"particulas",obj_vel);
							}
					}
					
					timer_queda--; //Dimuindo o valor do timer_queda, para saber saber se vai aplicar ou não pulo atravez do buffer
				}
			
				//Controlando a altura do pulo
				if(jump_s && velv<0){
					velv*=.7;	
				}
				
				//indo para o estado de parado
				if(velh==0 && velv==0){
					estado = state.parado;		
				}
				
				//----------Limitando as velocidades com o Clamp
				velv = clamp(velv,-max_velv,max_velv);
			break;
							
		case state.morte:
			velv=0;
			velh=0;
			if(morrer){
				image_index=0;
				morrer=false;
				sprite_index=spr_player_end;
			}
			if(image_index>=image_number-1){
				global.pontos=ponto_fase;
				room_restart();	
			}
				
			break;
				
		case state.nascer:
		if(nascer){
			image_index=0;
			nascer=false;
			ponto_fase = global.pontos;
		}
		if(image_index>=image_number-1){
			sprite_index=spr_player_virtual_idle;
			estado=state.movendo;
		}
		break;
				
		case state.questao:
			velv=0
			velh=0;
		break;
			
		case state.dialogo:
		
			sprite_index=spr_player_virtual_idle;
			velv = 0;
			velh -= 0.2;
			velh = clamp(velh,0,2);
			
			pode_pular = false;

			if (!chao) {
				velv+=grav;	
			}
		break;
			
}
if(instance_exists(obj_trampolim)){
	if(place_meeting(x,y,obj_trampolim)){
		max_velv=30;	
	}else if(place_meeting(x+1,y+1,obj_plat)){
		max_velv=12;	
	}
}

//----------Adicionando colisão horizontal
	if(place_meeting(x+velh,y,obj_plat)){
		while(!place_meeting(x+sign(velh),y,obj_plat)){
			
			x+=sign(velh);	
		}
		velh=0;
	}
	//----------Adicionando colisão horizontal con caixas
	if(place_meeting(x+velh,y,obj_wood_box)){
		while(!place_meeting(x+sign(velh),y,obj_wood_box)){
			x+=sign(velh);	
		}
		velh=0;
	}
	x+=velh;

	//----------Adicionando colisão vertical
	if(place_meeting(x,y+velv,obj_plat)){
		while(!place_meeting(x,y+sign(velv),obj_plat)){
			
			y+=sign(velv);	
		}
		velv=0;
	}
	
	//----------Adicionando colisão vertical com caixas
	if(place_meeting(x,y+velv,obj_wood_box)){
		while(!place_meeting(x,y+sign(velv),obj_wood_box)){
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
		y+=velv;

if(sprite_index=spr_player_virtual_run){
	if!(audio_is_playing(snd_footstep)){
		audio_play_sound(snd_footstep,5,false);	
	}
}else{
	audio_stop_sound(snd_footstep);	
}

xscale = lerp(xscale,1,.15);
yscale = lerp(yscale,1,.15);
