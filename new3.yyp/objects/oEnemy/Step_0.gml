/// @description Just Like oPlayer
// You can write your code in this editor
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
image_xscale=size;
image_yscale=size;
