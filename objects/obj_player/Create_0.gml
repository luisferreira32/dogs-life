/// @description Creates the player and its initial state
///

// Some constants
POOP_ANIMATION_DURATION_MS = 1000; // ms
POOP_METER_FILL_RATIO_MS = 0.01; // 0.0005; // poop meter percentage growth on milli seconds dt
POOP_METER_MIN = 1; // 10; // can only poop if it has filled at least this amount
POOP_METER_WARN = 10; // 80; // will only show poop meter if it has filled at least this amount
POOP_METER_BURST = 100;
POOP_METER_COLOR = #664433;
POOP_MIN_RATIO = 0.7; // poop min size even if we're not very "charged"

// The player variable definitions
move_speed = 1;
poop_meter = 0; // 0 -> 100
is_pooping = false;
has_pooped = false;
poop_duration = POOP_ANIMATION_DURATION_MS; 
prev_sprite = spr_player_right;

// Sprite array
player_sprites = [spr_player_down, spr_player_up, spr_player_right, spr_player_left]

// Some constant variables
instances_layer = layer_get_id("Instances")
