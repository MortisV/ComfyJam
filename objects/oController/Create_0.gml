window_set_cursor(cr_none);
#macro MOUSE_X device_mouse_x_to_gui(0)
#macro MOUSE_Y device_mouse_y_to_gui(0)

display_set_gui_size(320,180);

depth = -999;

var _windowZoom = 2;
window_set_size(320 * _windowZoom,180 * _windowZoom);
surface_resize(application_surface,window_get_width(),window_get_height());
call_later(1,time_source_units_frames,window_center);

