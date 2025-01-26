/// @description Draw the shadow sprite per object child based on the child sprite size 
/// 


draw_sprite_ext(
    spr_shadow, 
    0, 
    x, 
    y-5, 
    0.7*image_xscale*sprite_get_width(spr_shadow)/sprite_width, 
    image_yscale*sprite_get_height(spr_shadow)/sprite_height, 
    0, 
    c_black, 
    0.3
);


draw_self()