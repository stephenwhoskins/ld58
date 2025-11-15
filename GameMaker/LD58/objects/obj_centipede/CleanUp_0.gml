/// @description Insert description here
// You can write your code in this editor

if (hit_count == max_hit_count)
{
	global.stages_complete[0] = true;
	audio_stop_all();
	audio_play_sound(snd_sfx_boss_defeat, 10, false);
	
	if (!global.bugs_learned[4])
	{
		global.bugs_learned[4] = true;
		instance_create_depth(x, y, depth - 1, obj_bug_learned);
	}
}