 /// @description Insert description here
// You can write your code in this editor
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
			if !(collision_point(x,y-sign(diffY)*32,objWall,false,false)) 
			{
				y = y-sign(diffY)*32;
			}
			else if !(sign(diffX) == 0)
			{
				if !(collision_point(x-sign(diffX)*32,y,objWall,false,false)) 
				{
					x = x-sign(diffX)*32;
				}					
			}
		} 
		
		else if (abs(diffX) > abs(diffY))  //RÖR I X
		{
			if !(collision_point(x-sign(diffX)*32,y,objWall,false,false)) 
			{
				x = x-sign(diffX)*32;
			}
			else if !(sign(diffY) == 0)
			{
				if !(collision_point(x,y-sign(diffY)*32 ,objWall,false,false)) 
				{
					y = y-sign(diffY)*32;
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

/*global.turnIndex += 1;
}
var arrayLength = array_length_1d(global.arrayTurn);
if global.turnIndex > (array_length_1d(global.arrayTurn) -1)
{
	global.turnIndex = 0;
}*/ 