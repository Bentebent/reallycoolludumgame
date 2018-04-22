/// @description Insert description here
// You can write your code in this editor

if (other.id == colliderId)
	return;

colliderId = other.id;

moveSpeed = 15;
		
inst = instance_create_layer(x+8, y, "FireTrap_Layer", objFireBall);
with (inst)
{
	speed = other.moveSpeed;
	direction = 0;
	image_angle = 0;
	global.fireBallAmount += 1;
}
inst = instance_create_layer(x, y+8, "FireTrap_Layer", objFireBall);
with (inst)
{
	speed = other.moveSpeed;
	direction = 90;
	image_angle = 90;
	global.fireBallAmount += 1;
}
inst = instance_create_layer(x-8, y, "FireTrap_Layer", objFireBall);
with (inst)
{
	speed = other.moveSpeed;
	direction = 180;
	image_angle = 180;
	global.fireBallAmount += 1;
}
inst = instance_create_layer(x, y+8, "FireTrap_Layer", objFireBall);
with (inst)
{
	speed = other.moveSpeed;
	direction = 270;
	image_angle = 270;
	global.fireBallAmount += 1;
}
