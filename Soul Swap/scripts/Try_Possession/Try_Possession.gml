/// @description Attempts to possess a nearby obj_possessable_parent object
function Try_Possession(range)
{
	//Check for vessels within vessel_range
	var vessel = Find_Vessel(range);

	//Make sure vessel is valid
	if(vessel != noone)
	{	
		//Set the new vessel as possessed
		vessel.player_possessed = true;
		
		//Destroy ghost
		instance_destroy();
	}
}