/// @description Attack Attempts

//get player instance id from controller
target = oController.player_vessel;
			
//Check if player is attackable and in range
if (instance_exists(target) && !player_possessed)
{
	//Get distance to target
	var distance = point_distance(x, y, target.x, target.y);
	
	//check if in range
	if (distance <= atkRange)
	{
		//get attack direction
		var attack_direction = point_direction(x,y, target.x,target.y);
		
		Attack(damage,attack_direction,projectile_speed);
		
		//reset alarm with attack cooldown
		alarm_set(0,atkCD);
	}
	else
	{
		//Reset clock to try again
		alarm_set(1,10);
	}
}