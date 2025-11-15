/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hit_count == max_hit_count && !global.bugs_learned[7])
{
	global.bugs_learned[7] = true;
	instance_create_depth(x, y, depth - 1, obj_bug_learned);
}