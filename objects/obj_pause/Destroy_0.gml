/// @description Un-pause the game

// allow instances to go back to life
instance_activate_all();
// memory free!
surface_free(pause_surface);