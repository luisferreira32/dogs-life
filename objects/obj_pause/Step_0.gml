/// @description Pause ends when escape is pressed

if (keyboard_check_released(vk_escape)) { 
    // destroy self to reset the state;
    instance_destroy(self);
}