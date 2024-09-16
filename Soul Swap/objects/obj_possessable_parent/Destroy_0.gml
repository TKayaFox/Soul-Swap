/// @description Spawn Ghost on death if possessed
if (player_possessed == true)
{
	instance_create_layer(x,y, "Instances", obj_player_ghost);
}
