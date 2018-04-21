/// @description Move towards player
// You can write your code in this editor

var diffX;
var diffY;

diffX = x - objCharacter.x;
diffY = y - objCharacter.y;


if (abs(diffX) > abs(diffY)) { // RÖR I Y
	y = y+16;
}
else if (abs(diffX) < abs(diffY)) { //RÖR I X
	y = y-16;	
}
else if (abs(diffX) == abs(diffY)) { // VÄLJ
	y = y+16;
	x = x+16;
}