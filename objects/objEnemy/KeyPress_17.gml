/// @description Move towards player
// You can write your code in this editor

/*var diffX;
var diffY;

diffX = x - objCharacter.x;
diffY = y - objCharacter.y;


if (abs(diffX) <= abs(diffY)) { // RÖR I Y
	if !(collision_point(x,y-sign(diffY)*16,objWall,false,false)) {
		y = y-sign(diffY)*16;
	}
}
else if (abs(diffX) > abs(diffY)) { //RÖR I X
	if !(collision_point(x-sign(diffX)*16,y,objWall,false,false)) {
		x = x-sign(diffX)*16;
	}
}
/*else if (abs(diffX) == abs(diffY)) { // VÄLJ
	y = y+16;
	x = x+16;
}*/