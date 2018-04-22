/// @description Insert description here
// You can write your code in this editor
if x < 0
{
	global.fireBallAmount -=1;
	instance_destroy();
}

if x > room_width
{
	global.fireBallAmount -=1;
	instance_destroy();
}

if y < 0
{
	global.fireBallAmount -=1;
	instance_destroy();
}

if y > room_height
{
	global.fireBallAmount -=1;
	instance_destroy();
}