/// @description Insert description here
// You can write your code in this editor

if (collision_point(x,y,objCharacter,false,false)) {
	buttonedPressed = buttonedPressed + 1;
}
else {
	buttonedPressed = 0;
}

if (instance_exists(theWall) && buttonedPressed == 1) {
	instance_destroy(theWall);
	theDoor.image_index = 1;
	buttonedPressed = 2;
}
else if (!(instance_exists(theWall)) && buttonedPressed == 1) {
	theWall = instance_create_layer(theDoor.x,theDoor.y,"Wall_Layer",objWall);
	theDoor.image_index = 0;
}