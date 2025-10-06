/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum SPITTER_STATES
{
	rising_left,
	spitting_left,
	lowering_left,
	rising_right,
	spitting_right,
	lowering_right,
}

state = SPITTER_STATES.rising_right;
image_xscale = -1;
y_velocity = -1;
alarm[0] = 3 * game_get_speed(gamespeed_fps);

start_x = x;
start_y = y;

y = start_y + sprite_height;

y_velocity = -1;

if (!audio_is_playing(snd_music_boss)) audio_play_sound(snd_music_boss, 10, true);