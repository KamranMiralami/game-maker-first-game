/// @desc scriptTransition (mode , targetroom)
function ScriptTransition() {
	with(oTransition)
	{
		mode = argument[0];
		if(argument_count>1) target=argument[1];
	}


}
