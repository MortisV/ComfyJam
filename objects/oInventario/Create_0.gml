Iwidth = 5
Iheight = 7
IDistancia = sprite_get_width(sInvBox) + 2
Itotal = Iwidth* Iheight
Inventario = array_create(Itotal, -1)
Iaberto = false

//Tamanho do GUI - viewport0
Wtela = 320
Htela = 180

display_set_gui_size(Wtela, Htela)