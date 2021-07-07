if(hascontrol){
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));    
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(vk_space);
}
else{
	key_right=0;
	key_left=0;
	key_jump=0;
}
var move = key_right - key_left;

hsp = move*10;
vsp = vsp+gravitysp;

if(place_meeting(x+hsp,y,oWall)==1)
{
	while(place_meeting(x+sign(hsp),y,oWall)==0)
	{
		x=x+sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if(key_jump==1)
{
	if(onAir<2){
		onAir++;
		vsp-=20;
	}
}
if(place_meeting(x,y+vsp,oWall)==1)
{
	while(place_meeting(x,y+sign(vsp),oWall)==0)
	{
		y=y+sign(vsp);
	}
	vsp = 0;
	onAir=0;
}
y = y + vsp;

if(hsp>0){
	if(vsp>0){
		image_index=7;
	}
	if(vsp<0){
		image_index=5;
	}
	if(vsp==0){
		sprite_index=sPlayerR;
	}
}
if(hsp<0){
	sprite_index=sPlayer;
	if(vsp>0){
		image_index=8;
	}
	if(vsp<0){
		image_index=6;
	}
	if(vsp==0){
		sprite_index=sPlayerL;
	}
}
if(hsp==0){
	if(vsp>0){
		image_index=3;
	}
	if(vsp<0){
		image_index=0;
	}
	if(vsp==0){
		sprite_index=sPlayer;
		image_speed=0;
		image_index=4;
	}
}