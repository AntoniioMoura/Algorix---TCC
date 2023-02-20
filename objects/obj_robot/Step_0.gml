/// @description Insert description here
// You can write your code in this editor


//Fazendo o NPC olhar para o player
var olhar = 0;

if (instance_exists(obj_player)) {
	if (x > obj_player.x) {
		 image_xscale = -1;	
		 olhar = -1;
	} else {
		image_xscale = 1;
		olhar = 1;
	}
}

var x1_colisao = x - 80;
var y1_colisao = y - 60;
var x2_colisao = x + 80;
var y2_colisao = y + 60;

var aparecer_npc = collision_rectangle(x1_colisao - 200, y1_colisao, x2_colisao + 200, y2_colisao, obj_player, true, false);
var alcance_dialogo = collision_rectangle(x1_colisao, y1_colisao, x2_colisao, y2_colisao, obj_player, true, true);

if ((aparecer_npc or aparecendo_npc) and !finalizou_aparicao) {
	
	aparecendo_npc = true;
	
	sprite_index = spr_player_start;
	
	if (image_index >= image_number-1) {
		sprite_index = spr_npc_frog;	
		aparecendo_npc = false;
		finalizou_aparicao = true;
	}
}

if (finalizou_aparicao and !criou_dialogo) {
	obj_player.estado = state.dialogo;
	alarm[0] = room_speed/2;
	criou_dialogo = true;
}

if (keyboard_check_pressed(ord("E")) and alcance_dialogo) {
	if (!instance_exists(obj_text_box)) {
		obj_player.estado = state.dialogo;
		scr_create_textbox(text_id);
	}
}