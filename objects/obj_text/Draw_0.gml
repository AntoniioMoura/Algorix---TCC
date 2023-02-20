// Dados da câmera
var cam_posX = camera_get_view_x(view_camera[0]);
var cam_posy = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);

// Dados da text box
var box_width = sprite_get_width(spr_text_box);
var box_height = sprite_get_height(spr_text_box);

// Fazendo cálculo do xscale
var size_width = box_size_ini / box_width;

// Fazendo tamanho inicial da caixa aumentar o valor com lerp
box_size_ini = lerp(box_size_ini, box_width, .085);

// Desenhando sprite
draw_sprite_ext(spr_text_box,0,cam_posX + (cam_width - (cam_width - 80)), cam_posy+80,size_width,1,0,c_white,1);

// Configurando a escrita do texto
text_atual = string_copy(text[pagina], 1, indice);
text_limite = string_length(text[pagina]);
	
if (indice <= text_limite) {
	indice++;
}

// Dados do texto
var text_height = string_height(text[pagina]);

// Desenhando texto
draw_set_font(fnt_principal);
draw_text_ext(cam_posX + (cam_width - (cam_width - 230)), cam_posy + box_height-60, text_atual, text_height+10, box_width-320);

draw_set_font(-1);




