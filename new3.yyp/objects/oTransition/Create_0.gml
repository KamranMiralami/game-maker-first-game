w = display_get_gui_width();
h = display_get_gui_height();
h_half = h/2;
enum t_mode{
	off,
	next,
	goto,
	restart,
	intro
}
mode=t_mode.off;// mode=0;
percent = 1;
target = room;