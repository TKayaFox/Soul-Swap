/// @description Movement and Possession

//Use Movement script to handle movement
Player_Movement(spd,accel,frict,0);

//Check for keypress of possess_key (enter)
if (keyboard_check(possess_key) || keyboard_check(possess_key2))
{
	//if key has been held long enough, attempt posession. Else increment possess_key_held
	if (possess_key_held >= possess_hold_delay)
	{
		Try_Possession(possess_range);
		audio_play_sound(snd_Soul_Swap, 1, false);
		possess_key_held=0;
	}
	else
	{
		possess_key_held += 1;
	}
}
else //no longer held, nullify counter
{
	possess_key_held=0;
}

