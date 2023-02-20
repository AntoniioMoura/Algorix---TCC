/// @description Insert description here
// You can write your code in this editor

//Verificando se o player exsite, para fazer a veriicação da plataforma
if(instance_exists(obj_player)){
	if(obj_player.y>y){ //Plataforma acima do player
		plat_cima=false;//Plataforma invisivel
	}else{
		plat_cima=true;

	}
}
