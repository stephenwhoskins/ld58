/// @description Insert description here
// You can write your code in this editor

if (room_id != -1)
{
	obj_transition_pixelate_out.room_id = room_id;
}
else
{
	room_goto(room);
}