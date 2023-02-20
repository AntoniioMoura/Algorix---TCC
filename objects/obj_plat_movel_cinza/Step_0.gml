/// @description Insert description here
// You can write your code in this editor

if(criar_trilho){
	if(direita){
		for(var i=1;i<=qtd_trilho;i++){
			instance_create_layer(x+15*i,y,"trilhos",obj_plat_trilho);	
		}
	}else{
		for(var i=1;i<=qtd_trilho;i++){
			instance_create_layer(x-15*i,y,"trilhos",obj_plat_trilho);	
		}
	}
	criar_trilho=false;
}
switch(estado){
	case "parado": sprite_index=spr_plat_movel_cinza_idle;
		contador--;
		if(contador==0){
			if(place_meeting(x+15,y,obj_plat_trilho)){
				estado="direita";	
			}else{
				estado="esquerda";	
			}	
			contador=room_speed*2;
		}
		break;
		
	case "esquerda":
		if(place_meeting(x-15,y,obj_plat_trilho)){
			sprite_index=spr_plat_movel_cinza_contrario;
			if(place_meeting(x,y-1,obj_player)){
				obj_player.x-=2;	
			}
			x-=2;			
		}else{
			estado="parado";	
		}		
		break;
	
	case "direita":
		if(place_meeting(x+15,y,obj_plat_trilho)){
			sprite_index=spr_plat_movel_cinza;
			if(place_meeting(x,y-1,obj_player)){
				obj_player.x+=2;	
			}
			x+=2;	
		}else{
			estado="parado";	
		}
		break;	
}
	

	
	
	