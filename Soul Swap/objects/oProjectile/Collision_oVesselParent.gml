/// @description Damage Vessel Parent

//Deal damage to target, then destroy projectile
if (other.team != team)
{
	Hit(damage,other);
	instance_destroy();
}