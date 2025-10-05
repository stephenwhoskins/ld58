/// @description Insert description here
// You can write your code in this editor

if (room_id != -1)
{
	if (scale_time == max_scale_time)
	{
		room_goto(room_id);
	}
	else
	{
		shader_set(sh_pixelate);

		var _scale = shader_get_uniform(sh_pixelate, "u_fScale");
		shader_set_uniform_f(_scale, scale);

		draw_surface(application_surface, 0, 0);
		shader_reset();

		scale_time = min(scale_time + delta_time, max_scale_time);

		scale = floor(256 * (scale_time / max_scale_time) + 1);
	}
}