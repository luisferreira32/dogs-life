/// @description The chat object will take a series of chat
/// inputs and be able to walk through a dialog tree

// TODO: pick up the next text
PLACEHOLDER_TEXT = string_newlines_to_spaces(@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam augue arcu, rhoncus in mattis quis, finibus nec urna. Integer imperdiet cursus nunc sit amet pulvinar. Aliquam at commodo risus, nec sodales ligula. Vivamus rutrum erat et enim laoreet, vel viverra nisl pellentesque. Suspendisse a ipsum at enim dapibus tristique sed in leo.");

// some constants
CHAT_WINDOW_DELTA_X = 100;
CHAT_WINDOW_DELTA_Y = 50;
CHAT_WINDOW_H = 150;
TEXT_DELTA_X = 50; // TODO: not hardcoded to match dev view port
TEXT_DELTA_Y = 20; // TODO: not hardcoded to match dev view port
LINE_SEP = 16;
DIALOG_SPEED_PER_WORD_MS = 50;

// assume GUI does not change during dialog interaction (disable resizes)
CHAT_WINDOW_Y = display_get_gui_height()-CHAT_WINDOW_DELTA_Y-CHAT_WINDOW_H
CHAT_WINDOW_W = display_get_gui_width()-2*CHAT_WINDOW_DELTA_X
CHAT_TEXT_X = CHAT_WINDOW_DELTA_X+TEXT_DELTA_X
CHAT_TEXT_Y = display_get_gui_height()-CHAT_WINDOW_DELTA_Y-CHAT_WINDOW_H+TEXT_DELTA_Y
CHAT_TEXT_W = display_get_gui_width()-2*CHAT_WINDOW_DELTA_X-2*TEXT_DELTA_X
CHAT_TEXT_H = CHAT_WINDOW_H - 30;

// variables for the dialog
dialog = [];
current_dialog = {
    words: string_split(PLACEHOLDER_TEXT, " "),
};
display_offset = 0;
display_len = 0;
display_dialog_done = false;
display_dialog_clock_ms = 0;
