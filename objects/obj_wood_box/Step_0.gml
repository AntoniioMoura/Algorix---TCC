/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(place_meeting(x,y+2,obj_player)  && !colidiu_baixo){		
		colidiu_baixo=true;
		vida--;
	}
	
	if(place_meeting(x,y-2,obj_player) && !colidiu_cima){
		colidiu_cima=true;
		vida--;
	}

	if(colidiu_baixo){
		obj_player.velv=6;
		sprite_index=sprite_hit;
		if(image_index>=image_number-1){
			if(vida<=0){
				for(var i=0;i<qtd_moedas;i++){
					var c = instance_create_layer(x,y,"coins",tipo_moeda);
					c.criado = true;
				}				
				instance_destroy();	
			}else{
				sprite_index=sprite_principal;
				colidiu_baixo=false;
				image_index=0;;
			}
		}			
	}
	
		if(colidiu_cima){
		obj_player.velv=-8;
		sprite_index=sprite_hit;
		if(image_index>=image_number-1){
			if(vida<=0){
				for(var i=0;i<qtd_moedas;i++){
					var c = instance_create_layer(x,y,"coins",tipo_moeda);
					c.criado = true;
				}				
				instance_destroy();	
			}else{
				sprite_index=sprite_principal;
				colidiu_cima=false;
				image_index=0;;
			}
		}			
	}
}







