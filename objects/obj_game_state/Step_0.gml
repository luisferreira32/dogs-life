/// @description  Calculate game state step changes

// every second is a ~minute * REAL_TO_GAME_TIME_RATIO 
game_time_m += REAL_TO_GAME_TIME_RATIO * delta_time / 1000000
if (game_time_m >= 60) {
    game_time_m = 0
    game_time_h += 1
}
if (game_time_h >= 24) {
    game_time_h = 0
}