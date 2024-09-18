/// @description Rotate and Move relative to direction variable

//Rotate Projectile to face in direction of movement
image_angle = direction;

//Move in target direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);