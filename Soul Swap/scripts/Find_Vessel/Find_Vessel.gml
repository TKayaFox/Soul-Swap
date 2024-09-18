/// Find the nearest obj_possessable_parent in given range
function Find_Vessel(range)
{
    // Find the nearest obj_possessable_parent around player
    var vessel = instance_nearest(x, y, oVesselParent);

	//Check if object is in possessable range (if any are around) and not already possessed
	if (vessel != noone && vessel.player_possessed==false)
	{
		//get distance to between that vessel and self
		var distance = point_distance(x, y, vessel.x, vessel.y);
		
		//if vessel is out of range reset vessel to null, otherwise we return the target
		if (distance > range)
		{
			vessel = noone;
		}
	}
	//return the closest	
	return vessel;
}