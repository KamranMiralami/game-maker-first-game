/// @description Insert description here
// You can write your code in this editor
with(oPlayer)
{
	if(hascontrol)
	{
		hascontrol = false;
		ScriptTransition(t_mode.goto,other.target);
	}
}