// Update stored player instance id
function Update_Player_Instance(target){
	//Make sure target is valid
	if (instance_exists(target))
	{
		if (instance_exists(oCamera))
		{
			oCamera.follow=target;
		}
		if (instance_exists(oController))
		{
			oController.player_vessel=target;
		}
	}
}