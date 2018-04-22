/// @description Insert description here
// You can write your code in this editor
if global.fireBallAmount = 0
{
	if !(collision_point(x+16,y,objWall,false,false)) 
	{
		if (collision_point(x+16,y,objFireTrap,false,false)) 
		{
			moveSpeed = 15;
		
			inst = instance_create_layer(x+24, y+8, "Objects_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 0;
				image_angle = 0;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+24, y+8, "Objects_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 90;
				image_angle = 90;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+24, y+8, "Objects_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 180;
				image_angle = 180;
				global.fireBallAmount += 1;
			}
			inst = instance_create_layer(x+24, y+8, "Objects_Layer", objFireBall);
			with (inst)
			{
				speed = other.moveSpeed;
				direction = 270;
				image_angle = 270;
				global.fireBallAmount += 1;
			}
		}
		audio_play_sound(soundBlip,2,false);
		x = x+16;
		global.turnIndex += 1;
	}
}