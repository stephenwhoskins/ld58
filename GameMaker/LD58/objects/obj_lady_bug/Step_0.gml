/// @description Insert description here
// You can write your code in this editor

if (sprite_index == hit_animation || obj_stage_klunk.sprite_index == spr_klunk_hit)
{
	return;
}

if (!place_meeting(x + x_velocity, y, obj_stage_earth) && place_meeting(x + 16 * x_velocity, y+1, obj_stage_earth))
{
	x += x_velocity;
}
else
{
	x_velocity = -x_velocity;
	image_xscale = -image_xscale;
}