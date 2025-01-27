/// @description Draw the shadow sprite per object child based on the child sprite size 
/// 


draw_sprite_ext(
    spr_shadow, 
    0, 
    x, 
    y-5*sprite_width/sprite_get_width(spr_shadow), 
    0.7*image_xscale*sprite_width/sprite_get_width(spr_shadow), 
    image_yscale*sprite_height/sprite_get_height(spr_shadow), 
    0, 
    c_black, 
    0.3
);


draw_self()