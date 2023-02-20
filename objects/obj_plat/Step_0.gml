/// @description Insert description here
// You can write your code in this editor
if(ativar_serra){
	if(criar_serra){
			var serra1 = instance_create_layer(x-1,y+sprite_height/2,"traps",obj_saw);	
			serra1.criador=self;
		if(duas_serras){
			var serra = instance_create_layer(x+sprite_width+1,y+sprite_height/2,"traps",obj_saw);	
			duas_serras=false;
			serra.estado="cima"; 
			serra.criador=self;
		}
		criar_serra=false;
	}
}

if(bolhaespinho){
rot+= spd*direcao;
for (var i=0; i<pedaco; i++){
	var xx = lengthdir_x(12*i, rot + ang);
	var yy = lengthdir_y(12*i, rot + ang);
	filhos[i].image_angle = 90+rot;
	filhos[i].x= x + xx + 7 ;
	if(i<pedaco-1){
		filhos[i].y= y + yy + 7;
	}else{
		filhos[i].y= y + yy + 7;
	}
}

//Me destruindo
}



