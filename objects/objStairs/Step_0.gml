/// @description Insert description here
// You can write your code in this editor
if x = objCharacter.x && y = objCharacter.y
{
	audio_stop_sound(soundMusic);
	audio_play_sound(soundEndLevel,11,false);
	room_goto_next();
}