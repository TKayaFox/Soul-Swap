// Shoots a projectile at a target
function Ranged_Attack(damage,target,projectile_type)
{
	//set projectile to point in direction of target
	//Spawn projectile (assume projectile handles its own behavior after spawn)
	projectile = instance_create_layer(x,y, "Instances", projectile_type);
	projectile.direction = point_direction(x,y, target.x,target.y);
	projectile.speed = projectile_speed;
}