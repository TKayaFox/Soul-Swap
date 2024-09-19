// Attempt to attack in a specific direction
function Attack(damage,attack_direction,projectile_speed)
{
		//Set cooldown = true to prevent multiple attacks
		cooldown = true;

		//Attack
		if (isRanged)
		{
			Attack_Ranged(damage,attack_direction,projectile_speed);
		}
		else
		{
			Attack_Melee(damage,attack_direction);
		}
		
		
		//reset alarm with attack cooldown
		alarm_set(1,atkCD);
}