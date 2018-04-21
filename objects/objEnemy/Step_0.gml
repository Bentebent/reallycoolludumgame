/// @description Move towards player
// You can write your code in this editor

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
		}
		
		else if (abs(diffX) > abs(diffY))  //RÖR I X
		{
			if !(collision_point(x-sign(diffX)*16,y,objWall,false,false)) 
			{
				x = x-sign(diffX)*16;
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