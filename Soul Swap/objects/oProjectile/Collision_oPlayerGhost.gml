/// @description Damage Ghost

//Only hit target if is on opposing team
if (other.team = team)
{
	//Deal damage to target, then destroy projectile
	Hit(damage,other);
	instance_destroy();
}