/// @description Pause menu ends when escape is pressed

if (keyboard_check_released(vk_escape)) {
    // if pause is destroyed, everything will be cleaned-up
    instance_destroy(obj_pause);
}