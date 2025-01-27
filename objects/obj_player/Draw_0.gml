/// @description The draw event will ensure all sprites are 
/// drawn into the screen

// just show the poop meter starting from a threshold
if (poop_meter > POOP_METER_WARN) {
    // gets more solid as we get closer to the end
    var _alpha = (poop_meter-POOP_METER_WARN)/POOP_METER_BURST
    draw_sprite_ext(
        spr_bar, 
        0, 
        x, 
        y-30, 
        1, 
        1, 
        0, 
        c_white, 
        _alpha
    );
    draw_set_alpha(_alpha);
    draw_rectangle_color(
        x-14, 
        y-40, 
        x-14+27*clamp(poop_meter/POOP_METER_BURST, 0, 1), 
        y-36,
        POOP_METER_COLOR, 
        POOP_METER_COLOR,
        POOP_METER_COLOR, 
        POOP_METER_COLOR,
        false 
    );
    draw_set_alpha(1.0);
}

// draw the shadows and self based on parent code
event_inherited();