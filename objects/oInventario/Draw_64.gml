if (!Iaberto) exit;

var inv_x = oPlayer.x + 25
var inv_y = oPlayer.y - 64

for(var i = 0; i < array_length(Inventario); i++) {
	//desenhar inventario
	var xx = inv_x + (i mod Iwidth) * IDistancia;
	var yy = inv_y + (i div Iwidth) * IDistancia;
	
	//desenhar borda
	var selecionado = false;
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	var sw = sprite_get_width(sInvBox) / 2;
	if(point_in_rectangle(mx, my, xx - sw, yy - sw, xx + sw, yy + sw)) {
		selecionado = true;
	}
	
	draw_sprite_ext(sInvBox, 0 , xx, yy, 1, 1, 0, c_white, 1);
	if selecionado { draw_sprite_ext(sInvBox, 1 , xx, yy, 1, 1, 0, c_white, 1); }
	
	//desenhar items
	if Inventario[i] != -1 {
		var Sprite = Inventario[i][0].Sprite;
		draw_sprite_ext(Sprite, 0, xx, yy, 1, 1, 0, c_white, 1);
		
		var qtd = Inventario[i][1];
		if qtd > 1 {
			draw_set_halign(fa_right)
			draw_set_valign(fa_middle)
			draw_text_transformed(xx + 8, yy + 6, qtd, .2, .2, 0)
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
	}
}