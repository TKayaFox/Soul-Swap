///@description Leave possessed vessel
Vessel_Leave();

//EDIT: Move this into Vessel_Leave();
/// @description Leave Body on [Enter] if Player Posessed
if(player_possessed)
{
	//Create new ghost instance
    instance_create_layer(x,y, "Instances", oPlayerGhost);
	
	//allow control to return to computer for current vessel
	player_possessed = false;
	isStunned = true;
}