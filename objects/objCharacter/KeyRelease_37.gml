/// @description Insert description here
// You can write your code in this editor
if !(collision_point(x-16,y,objWall,false,false)) 
{
	if (collision_point(x-16,y,objFireTrap,false,false)) 
	{
		instance_create_layer(x-16, y, FireTrap_Layer, objFireBall);
	}
	x = x-16;
	global.turnIndex += 1;
}

