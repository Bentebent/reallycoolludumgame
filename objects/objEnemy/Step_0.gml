/// @description Move towards player
// You can write your code in this editor
/*
if global.turnIndex > 0
{
	with(global.arrayTurn[global.turnIndex])
	{
		var diffX;
		var diffY;

		diffX = x - objCharacter.x;
		diffY = y - objCharacter.y;

		if (abs(diffX) <= abs(diffY))  // RÖR I Y
		{
			if !(collision_point(x,y-sign(diffY)*16,objWall,false,false)) 
			{
				y = y-sign(diffY)*16;
			}
			else if !(sign(diffX) == 0)
			{
				if !(collision_point(x-sign(diffX)*16,y,objWall,false,false)) 
				{
					x = x-sign(diffX)*16;
				}					
			}
		} 
		
		else if (abs(diffX) > abs(diffY))  //RÖR I X
		{
			if !(collision_point(x-sign(diffX)*16,y,objWall,false,false)) 
			{
				x = x-sign(diffX)*16;
			}
			else if !(sign(diffY) == 0)
			{
				if !(collision_point(x,y-sign(diffY)*16,objWall,false,false)) 
				{
					y = y-sign(diffY)*16;
				}				
			}
		}
	}

global.turnIndex += 1;
}
var arrayLength = array_length_1d(global.arrayTurn);
if global.turnIndex > (array_length_1d(global.arrayTurn) -1)
{
	global.turnIndex = 0;
}
*/



 /// @description Insert description here
// You can write your code in this editor
if global.fireBallAmount = 0
{
	if global.turnIndex > 0
	{
		//with(global.arrayTurn[global.turnIndex])
		if (global.arrayTurn[global.turnIndex] == id)
		{
			var diffX;
			var diffY;
  
			diffX = x - objCharacter.x;
			diffY = y - objCharacter.y;

			if (abs(diffX) <= abs(diffY))  // RÖR I Y
			{
				if (!(collision_point(x,y-sign(diffY)*16,objWall,false,false)) && !(collision_point(x,y-sign(diffY)*16,objEnemy,false,false)) && !(collision_point(x,y-sign(diffY)*16,objEnemy2,false,false)))
				{
					
					y = y-sign(diffY)*16;
				}
				else if !(sign(diffX) == 0) // RÖR I X, OM Y INTE GÅR
				{
					if (!(collision_point(x-sign(diffX)*16,y,objWall,false,false)) && !(collision_point(x-sign(diffX)*16,y,objEnemy,false,false)) && !(collision_point(x-sign(diffX)*16,y,objEnemy2,false,false))) 
					{
						x = x-sign(diffX)*16;
					}					
				}
			} 
		
			else if (abs(diffX) > abs(diffY))  //RÖR I X
			{
				if (!(collision_point(x-sign(diffX)*16,y,objWall,false,false)) && !(collision_point(x-sign(diffX)*16,y,objEnemy,false,false)) && !(collision_point(x-sign(diffX)*16,y,objEnemy2,false,false)))
				{
					x = x-sign(diffX)*16;
				}
				else if !(sign(diffY) == 0) // RÖR I Y, OM X INTE GÅR
				{
					if (!(collision_point(x,y-sign(diffY)*16,objWall,false,false)) && !(collision_point(x,y-sign(diffY)*16,objEnemy,false,false)) && !(collision_point(x,y-sign(diffY)*16,objEnemy2,false,false)))
					{
						y = y-sign(diffY)*16;
					}				
				}
			}
			global.turnIndex += 1;
			var arrayLength = array_length_1d(global.arrayTurn);
			if global.turnIndex > (array_length_1d(global.arrayTurn)-1)
			{
				global.turnIndex = 0;
			} 
		}
	}
}