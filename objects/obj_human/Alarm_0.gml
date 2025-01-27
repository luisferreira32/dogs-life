/// @description Select a new target

if (target_x != xstart || target_y != ystart) {
    target_x = xstart
    target_y = ystart
} else {
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100); 
}

if (random(1) < 0.5) {
    target_y = ystart
} else {
    target_x = xstart
}

alarm[0] = RE_CALCULATE_MOVEMENT;