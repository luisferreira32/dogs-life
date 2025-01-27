/// @description 

// consts
RE_CALCULATE_MOVEMENT = 120 // steps == frames

// draw variables
prev_sprite = spr_human_down;
human_sprites = [spr_human_down, spr_human_up, spr_human_right, spr_human_left]

// movement variables
target_x = x;
target_y = y;
move_speed = 0.8;
alarm[0] = RE_CALCULATE_MOVEMENT;