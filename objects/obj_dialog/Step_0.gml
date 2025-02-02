/// @description Verify interaction for the next sentence and how to construct currently displayed string.


// input if not done displaying, display all the current displayable dialog
// if input and done displaying, pop to the next message / message part when multi line (reset clock and state)
// if no next message exit pause screen with destroy

// check input
if (keyboard_check_released(vk_tab)) {
    // TODO: delete debug logs in future
    show_debug_message("display_dialog_done {0} array_length(current_dialog.words) {1}", display_dialog_done, array_length(current_dialog.words))
    show_debug_message("display_len {0} display_offset {1}", display_len, display_offset)

    // if not done displaying, calculate string until end and return
    if (!display_dialog_done) {
        // naively assume string fits then work down from there
        var _estimated_len = array_length(current_dialog.words);
        for (; _estimated_len > 0; _estimated_len--) {
            var _estimated_h = string_height_ext(
                string_join_ext(" ", current_dialog.words, 0, _estimated_len),
                LINE_SEP,
                CHAT_TEXT_W
            )
            if (_estimated_h < CHAT_TEXT_H) {
                break;
            }
        }
        display_len = _estimated_len;
        display_dialog_done = true;
        // TODO: return?
    } else if(display_dialog_done && display_offset + display_len < array_length(current_dialog.words)){
        display_dialog_done = false;
        display_offset = display_len;
        display_len = 0;
        display_dialog_clock_ms = 0;
    } else if (display_dialog_done) {
        if (dialog.count() == 0 ) {
            instance_destroy(obj_pause);
        } else {
            // pop and reset all display variables
            current_dialog = dialog.pop();
            display_dialog_done = false;
            display_dialog_clock_ms = 0;
            display_offset = 0;
            display_len = 0;
        }
    }
} 

if (display_dialog_done) {
    return;
}

display_dialog_clock_ms += delta_time / 1000
var _estimated_len = clamp(floor(display_dialog_clock_ms/DIALOG_SPEED_PER_WORD_MS), 0, array_length(current_dialog.words) - display_offset)
var _estimated_h = string_height_ext(
    string_join_ext(" ", current_dialog.words, 0, _estimated_len),
    LINE_SEP,
    CHAT_TEXT_W
)


if (_estimated_h >= CHAT_TEXT_H) {
    // now wait for input for next part of the message
    display_dialog_done = true;
    return;
}

display_len = _estimated_len;

if (display_len + display_offset >= array_length(current_dialog.words)) {
    display_dialog_done = true; 
}

