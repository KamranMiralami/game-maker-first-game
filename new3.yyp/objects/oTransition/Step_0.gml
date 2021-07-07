if(mode != t_mode.off)
{
	if(mode == t_mode.intro)
	{
		percent = max(0,percent-0.05);
	}
	else{
		percent= min(1,percent+0.01);
	}
	if(percent == 1 || percent == 0)
	{
		if(t_mode.intro = mode){
			mode = t_mode.off;
		}
		if(t_mode.next = mode){
			mode = t_mode.intro;
			room_goto_next();
		}
		if(t_mode.goto = mode){
			mode = t_mode.intro;
			room_goto(target);
		}
		if(t_mode.restart = mode){
			game_restart();
		}
	}
}
