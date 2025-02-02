/// @description Display the chat window with the rendered text.

draw_sprite_stretched(
    spr_chat_window,
    0,
    CHAT_WINDOW_DELTA_X,
    CHAT_WINDOW_Y,
    CHAT_WINDOW_W,
    CHAT_WINDOW_H
);

draw_set_font(fn_default);
draw_set_halign(fa_left);
draw_text_ext(
    CHAT_TEXT_X,
    CHAT_TEXT_Y,
    string_join_ext(" ", current_dialog.words, display_offset, display_len),
    LINE_SEP,
    CHAT_TEXT_W
);
