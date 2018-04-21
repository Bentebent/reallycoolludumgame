/// @description Insert description here
// You can write your code in this editor
if !(collision_point(x,y+16,objWall,false,false)) 
{
	y = y+16;
	global.turnIndex += 1;
}