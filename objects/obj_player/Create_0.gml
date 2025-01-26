/// @description Creates the player and its initial state
/// TODO: load most of this from save file

// Some constants
POOP_ANIMATION_DURATION_MS = 1000; // ms

// The player variable definitions
move_speed = 2;
poop_meter = 0;
is_pooping = false;
has_pooped = false;
poop_duration = POOP_ANIMATION_DURATION_MS; 
prev_sprite = spr_player_right;

// Get some instances necessary for player interactions
tilemap = layer_tilemap_get_id("Tiles_Walls");