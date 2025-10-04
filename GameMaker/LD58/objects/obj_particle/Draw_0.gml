/// @description Insert description here
// You can write your code in this editor

if (life_microseconds > max_life_microseconds / 2 && max_life_microseconds != -1)
{
	if (!flashed)
	{
		draw_self();
		flashed = true;
	}
	else
	{
		flashed = false;
	}
}
else
{
	draw_self();
}