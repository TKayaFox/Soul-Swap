/// @description Attack Attempts

//get player instance id from controller
target = oController.player_vessel;
			
//Check if player is attackable and in range
if (instance_exists(target))
{
	//Get distance to target
	var distance = point_distance(x, y, vessel.x, vessel.y);
	
	//check if in range
	if (distance <= atkRange)
	{
		//Attack
		if (isRanged)
		{
			Ranged_Attack(damage,target,oProjectile);
		}
		else
		{
			Melee_Attack();
		}
		
		//reset alarm with attack cooldown
		alarm_set(0,atkCD);
	}
	else
	{
		//Reset clock to try again
		alarm_set(0,10);
	}
}