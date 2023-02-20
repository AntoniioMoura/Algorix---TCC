
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)) {
	audio_play_sound(snd_option, 50, false);
}

if (instance_exists(self) and instance_exists(obj_player)) {
	obj_player.estado = state.dialogo;
}
