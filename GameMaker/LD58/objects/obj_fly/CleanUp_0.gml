/// @description Insert description here
// You can write your code in this editor

if (hit_count == max_hit_count && !global.bugs_learned[6])
{
	global.bugs_learned[6] = true;
	instance_create_depth(x, y, depth - 1, obj_bug_learned);
}