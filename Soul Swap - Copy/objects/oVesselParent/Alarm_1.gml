/// @description Attack Attempts

//mark cooldown as no longer being in affect
cooldown = false;

//If controlled, attempt ai to attack
if (!player_possessed)
{
	//get player instance id from controller
	target = oController.player_vessel;
			
	//Check if player is attackable and in range
	if (instance_exists(target))
	{
		//Get distance to target
		var distance = point_distance(x, y, target.x, target.y);
	
		//check if in range
		if (distance <= atkRange)
		{
			//get attack direction
			var attack_direction = point_direction(x,y, target.x,target.y);
		
			Attack(damage,attack_direction,projectile_speed);
		
		}
		else
		{
			//Reset clock to try again
			alarm_set(1,10);
		}
	}
}