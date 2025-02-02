/// @function new_dialog();
/// Creates a dialog system that can be replayed by the obj_dialog


function new_dialog() constructor  {
    _dialogs = [];
    
    add = function (_sprite, _message) {
        array_push(_dialogs, {
            _sprite: _sprite,
            _message: _message,    
        })
    }
    
    pop = function () {
        var _t = array_first(_dialogs);
        array_delete(_dialogs, 0, 1);
        return _t
    }
    
    count = function() {
        return array_length(_dialogs);
    }
    
    return _str;
}