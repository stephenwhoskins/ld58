/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_enter) && !key_pressed)
{
	key_pressed = true;
	obj_transition_pixelate_out.room_id = rm_insect_museum;
}