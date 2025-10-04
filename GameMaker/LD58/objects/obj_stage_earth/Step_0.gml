/// @description Insert description here
// You can write your code in this editor

image_index = 0;

if (place_meeting(x, y-1, obj_stage_earth))
{
	image_index += 1;
}
if (place_meeting(x+1, y, obj_stage_earth))
{
	image_index += 2;
}
if (place_meeting(x, y+1, obj_stage_earth))
{
	image_index += 4;
}
if (place_meeting(x-1, y, obj_stage_earth))
{
	image_index += 8;
}