/// @description The player interaction with the environment
/// will be described here.

// Input gathering

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _poop = keyboard_check(ord(" "))

var _dt_ms = delta_time/1000

// Update time-based values

// only update meter if we're not in the middle of pooping
if (!is_pooping) {
    poop_meter += _dt_ms * POOP_METER_FILL_RATIO_MS 
}

// force a poop if the poop meter bursted
if (poop_meter >= POOP_METER_BURST && !is_pooping) {
    poop_meter = POOP_METER_BURST;
    _poop = true;
}

// Calculating actions

if((_poop && is_pooping) || (is_pooping && !has_pooped) || (is_pooping && has_pooped && poop_duration > 0)) {
    // ensure animation duration of at least a defined time
    poop_duration -= _dt_ms
} else if(_poop && !is_pooping && poop_meter >= POOP_METER_MIN) {
    // start the pooping
    is_pooping = true;
    poop_duration = POOP_ANIMATION_DURATION_MS;
} else if (!_poop && is_pooping && has_pooped) {
    // was pooping and stopped clicking the space bar
    is_pooping = false;
    has_pooped = false;
        
    // calculate the score based on the magic formula and reset the poop_meter
    if (poop_meter > obj_game_state.max_poop_score) {
        obj_game_state.max_poop_score = poop_meter 
    }
    poop_meter = 0
} else {
    // movement
    move_collide_and_select_sprite(
        _hor, 
        _ver,
        move_speed,
        obj_game_state.collision_objects, 
        prev_sprite,
        player_sprites); 
    prev_sprite = sprite_index;
}



// Sprite calculation, post move_collide_and_select_sprite to overwrite it

if (is_pooping) {
    image_speed = 1
    if (prev_sprite == spr_player_right) {
        sprite_index = spr_poop_right; 
    } else if (prev_sprite == spr_player_left) {
        sprite_index = spr_poop_left;
    } else if (prev_sprite == spr_player_down) {
        sprite_index = spr_poop_right; // poop up spr missing
    } else if (prev_sprite == spr_player_up) {
        sprite_index = spr_poop_left; // poop down spr missing
    }
}
