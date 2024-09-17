/// @description Attempts to possess a nearby obj_possessable_parent object
function Try_Possession(range)
{
	//Check for vessels within vessel_range
	var vessel = Find_Vessel(range);

	//Make sure vessel is valid
	if(vessel != noone)
	{	
		//Set the new vessel as possessed (and update controller with their id
		vessel.player_possessed = true;
		oController.player_vessel = vessel.id;
		
		//Destroy ghost
		instance_destroy();
	}
}