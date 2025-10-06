/// @description Insert description here
// You can write your code in this editor

var _view_x = camera_get_view_x(view_camera[0]);
var _view_y = camera_get_view_y(view_camera[0]);

for (var _i = 0; _i < health; _i++)
{
	draw_sprite(spr_klunk_heart, 0, _view_x + 16 * _i + 15, _view_y + 24);
}