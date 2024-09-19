// Attempt to deal damage to target
function Hit(damage, target)
{
	//Ensure target is valid
	if (instance_exists(target))
		{
		//reduce targets HP by damage
		target.hp -= damage;
		
		//destroy target instance if 0 hp or less
		if (target.hp <= 0)
		{
			instance_destroy(target);
			global.PlayerScore += 10;
		}
	}
}