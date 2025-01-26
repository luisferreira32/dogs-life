/// @description Insert description here
// You can write your code in this editor

if (is_pooping) {
    image_index = sprite_get_number(sprite_index) - 1;
    image_speed = 0;
    if (!has_pooped) {
        var poop_x = x
        if (prev_sprite == spr_player_left) {
            poop_x += 10; 
        } else if (prev_sprite == spr_player_right) {
            poop_x -= 10;
        }
        
        instance_create_layer(poop_x, y, layer, obj_poop);
        has_pooped = true; 
    }
}