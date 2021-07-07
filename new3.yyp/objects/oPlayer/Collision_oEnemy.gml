/// @description Insert description here
// You can write your code in this editor
with(oGun) instance_destroy();
instance_change(oPDead,true);
direction = point_direction(other.x,other.y,x,y);
hsp=lengthdir_x(10,direction);
vsp=lengthdir_y(10,direction);
if(sign(hsp)!=0)
	image_xscale = sign(hsp);
