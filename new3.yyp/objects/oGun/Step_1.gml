x=oPlayer.x+20*image_yscale;
y=oPlayer.y+10;
image_angle = point_direction(x,y,mouse_x,mouse_y);
if(fireDelay>=0)
	fireDelay--;
if(recoil>=0)
	recoil--;
if(mouse_check_button(mb_left) and fireDelay<0)
{
	audio_play_sound(sound0,0,false);
	recoil = 20;
	fireDelay=10;
	with(instance_create_layer(x,y,"gunLayer",oBullet))
	{
		speed = 15;
		direction = other.image_angle + random_range(-2,4);
		image_angle = direction;
	}
}
x= x - lengthdir_x(recoil,image_angle);
y= y - lengthdir_y(recoil,image_angle);

if(image_angle>90 && image_angle<270)
{
	image_yscale = -1;
}
else{
	image_yscale = 1;
}