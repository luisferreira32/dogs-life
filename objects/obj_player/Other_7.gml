/// @description The animation end is used to control the non-repeatable
/// sprites animations and triggering of instance creation on the end of
/// such animations.

if (is_pooping) {
    // make it so that the sprite poop animation won't repeat itself
    image_index = sprite_get_number(sprite_index) - 1;
    image_speed = 0;
}

if (is_pooping && !has_pooped) {
    // create a single poop instance when we're pooping
    var poop_x = x;
    if (prev_sprite == spr_player_left) {
        poop_x += 10; 
    } else if (prev_sprite == spr_player_right) {
        poop_x -= 10;
    }
    
    var poop_instance = instance_create_layer(poop_x, y, instances_layer, obj_poop);
    var scale_factor = POOP_MIN_RATIO + (1-POOP_MIN_RATIO)*poop_meter/POOP_METER_BURST;
    poop_instance.image_xscale = scale_factor;
    poop_instance.image_yscale = scale_factor;
    
    has_pooped = true;
}