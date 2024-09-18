/// @description Attack on click if player controlled
test = 1;
if (player_possessed && cooldown ==false)
{
	//get location of mouse click
	var attack_direction = point_direction(x,y, mouse_x,mouse_y);
		
	
	//Attack in direction of mouse click
	Attack(damage,attack_direction,projectile_speed);
}