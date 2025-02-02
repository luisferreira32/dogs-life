/// @description Simple pause menu with only the option to re-start the game

var text_x = view_wport[VIEW_PORT_IDX]/2;
var text_y = view_hport[VIEW_PORT_IDX]/2;

draw_set_font(fn_default);
draw_set_halign(fa_center);
draw_text_color(
    text_x,
    text_y,
    PAUSED_TEXT,
    c_black,
    c_black,
    c_black,
    c_black,
    .5)
draw_text(
    text_x,
    text_y,
    PAUSED_TEXT)
