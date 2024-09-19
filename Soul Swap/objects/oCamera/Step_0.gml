/// @description Update Camera

//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo - x)// / 15;//speed to snap to xy
y += (yTo - y)// / 15;

//keep camera center inside room
// +63 is what keeps the camera offset from the border to hide spawning of enemies.
x = clamp(x, viewWidthHalf + 63, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
