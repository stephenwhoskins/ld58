/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x + x_velocity, y, obj_stage_earth))
{
	x += x_velocity;
}
else
{
	x_velocity = -x_velocity;
	image_xscale = -image_xscale;
}