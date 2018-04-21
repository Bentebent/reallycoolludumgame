/// @description Open door
// You can write your code in this editor
var thewall;
var thedoor;

if (hasCollided == 0) {
	hasCollided = 1;
	thedoor = instance_nearest(x,y,objDoor);
	thewall = instance_nearest(thedoor.x, thedoor.y, objWall);
}

if (thewall.x == thedoor.x && thewall.y == thedoor.y && hasCollided == 1) {
	instance_destroy(thewall);
	hasCollided = 2;
}