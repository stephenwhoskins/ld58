/// @description Insert description here
// You can write your code in this editor

if (enter_pressed) return;

if (keyboard_check(vk_down) && !down_pressed)
{
	menu_item = (menu_item + 1) % MENU_ITEMS.max_menu_items;
	down_pressed = true;
}
else if (!keyboard_check(vk_down) && down_pressed)
{
	down_pressed = false;
}

if (keyboard_check(vk_up) && !up_pressed)
{
	menu_item = (menu_item + MENU_ITEMS.max_menu_items - 1) % MENU_ITEMS.max_menu_items;
	up_pressed = true;
}
else if (!keyboard_check(vk_up) && up_pressed)
{
	up_pressed = false;
}

if (keyboard_check(vk_enter) && !enter_pressed)
{
	if (menu_item == MENU_ITEMS.start) obj_transition_pixelate_out.room_id = rm_world_map;
	else exit;
	enter_pressed = true;
}

switch (menu_item)
{
	case MENU_ITEMS.start:
	{
		y = start_y;
		break;
	}
	case MENU_ITEMS.exit_game:
	{
		y = start_y + menu_item_offset;
		break;
	}
}