/// @description Pause ends when escape is pressed

if (keyboard_check_released(vk_escape)) {
    instance_destroy(self);
}