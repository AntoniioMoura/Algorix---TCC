/// @description Insert description here
// You can write your code in this editor
if(finalizar){
	show_message("Obrigado!!!");
	game_end();
}else{
	if(room_next(room)!=-1){
		room_goto_next()
	}else{ //Não tem outra room para ir
		room_restart()();   
	}	
}