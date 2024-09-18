// Shoots a projectile at a target
function Attack_Ranged(damage,attack_direction,projectile_speed)
{
	//set projectile to point in direction of target
	//Spawn projectile (assume projectile handles its own behavior after spawn)
	projectile = instance_create_layer(x,y, "Instances", oProjectile);
	projectile.direction = attack_direction;
	projectile.speed = projectile_speed;
}