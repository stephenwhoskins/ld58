/// @description Insert description here
// You can write your code in this editor

if (hit_count == max_hit_count)
{
	global.stages_complete[4] = true;
	audio_stop_all();
	audio_play_sound(snd_sfx_boss_defeat, 10, false);
}