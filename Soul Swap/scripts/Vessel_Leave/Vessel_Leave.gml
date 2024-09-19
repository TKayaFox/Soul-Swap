// Leaves a possessed body
function Vessel_Leave(){
	if(player_possessed)
	{
		//Create new ghost instance
	    instance_create_layer(x,y, "Instances", oPlayerGhost);
	
		//allow control to return to computer for current vessel
		player_possessed = false;
		team = 0;
		isStunned = true;
	}
}