/// @description Un-pause the game

// remove the only object instance that was being rendered
// it is up to the controller paused_obj to clean-up after himself.
instance_destroy(paused_obj_instance);

// allow instances to go back to life
instance_activate_all();
// memory free!
surface_free(pause_surface);