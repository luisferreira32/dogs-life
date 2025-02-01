/// @description  Calculate game state step changes

/// TODO
/// Bring this clock out of here, was we want to keep
/// the game_state activated during pauses such that we
/// can update progress / OR acknowledge paused state

// every second is a ~minute * REAL_TO_GAME_TIME_RATIO 
game_time_m += REAL_TO_GAME_TIME_RATIO * delta_time / 1000000;
if (game_time_m >= 60) {
    game_time_m = 0;
    game_time_h += 1;
}
if (game_time_h >= 24) {
    game_time_h = 0;
}

// out-of-game interaction, e.g., pause, menu, etc.
if (keyboard_check_released(vk_escape)) {
    instance_create_layer(0, 0, "Instances", obj_pause, {
        paused_obj: obj_pause_menu,
        draw_prev_surface: true,
    });
}