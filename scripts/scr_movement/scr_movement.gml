/// @function move_follow(object, speed);
/// @param {real} _hor The horizontal direction of the Object
/// @param {real} _ver The vertical direction of the Object
/// @param {real} _mov_speed The allowed movement speed of the Object
/// @param {Array} _col The array of collidable entities for this Object
/// @param {Asset.GMSprite} _prev_sprite The Object previously rendered sprite
/// @param {array} _sprites The Object sprites in the order [down, up, right, left]

function move_collide_and_select_sprite(_hor, _ver, _mov_speed, _col, _prev_sprite , _sprites)
{
    if (_ver != 0 && _hor != 0) {
        // diagonal walk, multiply sqrt(2)/2
        move_and_collide(
            round(_hor * _mov_speed * 0.707), 
            round(_ver * _mov_speed * 0.707), 
            _col, 
            undefined, 
            undefined, 
            undefined, 
            round(_mov_speed* 0.707), 
            round(_mov_speed* 0.707)
        ); 
    } else if (_ver != 0 || _hor != 0) {
        // horizontal and vertical walk
        move_and_collide(
            _hor * _mov_speed, 
            _ver * _mov_speed, 
            _col, 
            undefined, 
            undefined, 
            undefined, 
            _mov_speed, 
            _mov_speed
        ); 
    }
    
    if(_hor != 0 || _ver != 0) {
        image_speed = 1
        // if diagonal, start with horizontal sprites
        if (_hor > 0) {
            sprite_index = _sprites[2];
        } else if (_hor < 0) {
            sprite_index = _sprites[3];
        } else if(_ver > 0) {
            sprite_index = _sprites[0];
        } else if (_ver < 0) {
            sprite_index = _sprites[1];
        }
    } else {
        sprite_index = _prev_sprite;
        image_speed = 0
        image_index = 0
    }
}