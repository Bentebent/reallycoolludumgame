/// @description Insert description here
// You can write your code in this editor
audio_play_sound(soundDeadEnemy,4,false);
global.fireBallAmount -= 1;
instance_destroy();
instance_destroy(other);