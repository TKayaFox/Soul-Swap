/// @description Attempt Possession if [Enter] key is held

// Inherit the parent step event
event_inherited();

//Check for keypress of possess_key (enter)
if (keyboard_check(possess_key))
{
	//if key has been held long enough, attempt posession. Else increment possess_key_held
	if (possess_key_held >= possess_hold_delay)
	{
		Try_Possession(possess_range);
		possess_key_held=0;
	}
	else
	{
		possess_key_held++;
	}
}
else //no longer held, nullify counter
{
	possess_key_held=0;
}

