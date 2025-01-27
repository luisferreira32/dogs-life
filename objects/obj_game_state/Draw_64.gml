/// @description Game state has a GUI to reflect some key
/// elements of our game to the player

// draw hud
var hud_x = view_get_wport(VIEW_PORT_IDX)-50
var hud_y = 20
var hud_text = string_replace_all(string_format(game_time_h, 2, 0), " ", "0") 
    + ":" 
    + string_replace_all(string_format(game_time_m, 2, 0), " ", "0") 
    + "\n" 
    + string_replace_all(string_format(global.max_poop_score, 3, 0), " ", "0") 

draw_set_font(fn_default);
draw_set_halign(fa_right);
draw_text_color(
    hud_x -FONT_SHADOW_DEV,
    hud_y-FONT_SHADOW_DEV,
    hud_text,
    c_black,
    c_black,
    c_black,
    c_black,
    .5)
draw_text(
    hud_x,
    hud_y,
    hud_text)
