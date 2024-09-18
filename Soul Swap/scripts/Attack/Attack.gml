// Attempt to attack in a specific direction
function Attack(damage,attack_direction,projectile_speed){

		//Attack
		if (isRanged)
		{
			Attack_Ranged(damage,attack_direction,projectile_speed);
		}
		else
		{
			Attack_Melee(damage,attack_direction);
		}
}