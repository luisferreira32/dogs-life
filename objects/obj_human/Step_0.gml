/// @description 

var _hor = round(clamp(target_x - x, -1, 1));
var _ver = round(clamp(target_y - y, -1, 1));

// movement
move_collide_and_select_sprite(
    _hor, 
    _ver,
    move_speed,
    obj_game_state.collision_objects, 
    prev_sprite,
    human_sprites); 
prev_sprite = sprite_index;
