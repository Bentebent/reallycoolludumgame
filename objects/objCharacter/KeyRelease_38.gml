/// @description Insert description here
// You can write your code in this editor
if global.fireBallAmount = 0
{
	if !(collision_point(x,y-16,objWall,false,false)) 
	{
		if (collision_point(x,y-16,objFireTrap,false,false)) 
		{
			moveSpeed = 15;
		
			inst = instance_create_layer(x+8, y-8, "FireTrap_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 0;
				image_angle = 0;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+8, y-8, "FireTrap_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 90;
				image_angle = 90;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+8, y-8, "FireTrap_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 180;
				image_angle = 180;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+8, y-8, "FireTrap_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 270;
				image_angle = 270;
				global.fireBallAmount += 1;
			}
		}	
		y = y-16;
		global.turnIndex += 1;
	}
}