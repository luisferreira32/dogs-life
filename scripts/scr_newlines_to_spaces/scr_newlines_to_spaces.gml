/// @function string_newlines_to_spaces(_str);
/// @param {string} _str The string that has new lines
/// @return {string} _str with all new lines replaced by spaces


function string_newlines_to_spaces(_str) {
    _str = string_replace(_str, "\r\n", " "); // treat CRLF sequence as a single space
    _str = string_replace(_str, "\r", " "); // replace CR characters that weren't a part of CRLF sequence
    _str = string_replace(_str, "\n", " "); // replace LF characters that weren't a part of CRLF sequence
    return _str;
}