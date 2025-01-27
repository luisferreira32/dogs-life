/// @description Game state includes the key elements for
/// the game functioning.

// Constants
VIEW_PORT_IDX = 0;
FONT_SHADOW_DEV = 2;
REAL_TO_GAME_TIME_RATIO = 1;
DAY_START_HOUR = 6;

// Variables
// TODO: load most of this from save file
// TODO: saves are done at game state every day
max_poop_score = 0;
game_time_h = DAY_START_HOUR; // every day starts at 6 am
game_time_m = 0;


// Necessary variables for objects interactions, access here to add or remove based on
// level progressing
collision_objects = [layer_tilemap_get_id("Tiles_Walls"), obj_player, obj_human];

// help out in debugging, remove once we want to ship
show_debug_overlay(true)
show_debug_log(true)