/// @function dialog_handler();
/// Creates a dialog system that can be replayed by the obj_dialog


function dialog_handler() constructor  {
    _dialogs = [];
    
    add = function (_message) {
        array_push(_dialogs, {
            _message: _message,    
        })
    }
    
    pop = function () {
        var _t = array_first(_dialogs);
        array_delete(_dialogs, 0, 1);
        return {
            words: string_split(_t._message, " ")
        }
    }
    
    count = function() {
        return array_length(_dialogs);
    }
}