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
		vessel.team = 1;
		vessel.states = STATE.possessed;
		Update_Player_Instance(vessel.id);
		
		//Destroy ghost and prevent game from ending
		endGameOnDestroy = false;
		instance_destroy();
	}
}