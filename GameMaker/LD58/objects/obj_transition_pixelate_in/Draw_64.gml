/// @description Insert description here
// You can write your code in this editor

var _pixelate_out = instance_find(obj_transition_pixelate_out, 0);

if (_pixelate_out == noone || _pixelate_out.room_id == -1)
{
	if (scale == 1)
	{
		draw_surface(application_surface, 0, 0);
	}
	else
	{
		shader_set(sh_pixelate);

		var _scale = shader_get_uniform(sh_pixelate, "u_fScale");
		shader_set_uniform_f(_scale, scale);

		draw_surface(application_surface, 0, 0);
		shader_reset();

		scale_time = min(scale_time + delta_time, max_scale_time);

		scale = floor(128 - 128 * (scale_time / max_scale_time) + 1);
	}
}