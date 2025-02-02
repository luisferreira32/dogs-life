/// @description Pause object ensures the world stops keeping the current
/// surface, then creates an instance of the passed controller objects.
/// It is the responsability of the passed object controller to destroy any
/// subsequentially created instances / do any clean-up.
/// @param {Asset.GMObject} paused_obj will be used to create the instance.

// some constants
VIEW_PORT_IDX = 0;
CAMERA_IDX = 0;

// Draw current view port onto a paused surface
pause_surface = surface_create(view_wport[VIEW_PORT_IDX], view_hport[VIEW_PORT_IDX]);
surface_set_target(pause_surface);
draw_surface_part(
    application_surface,
    view_xport[VIEW_PORT_IDX], 
    view_yport[VIEW_PORT_IDX], 
    view_wport[VIEW_PORT_IDX], 
    view_hport[VIEW_PORT_IDX], 
    0,
    0
)
surface_reset_target();

// Pause all instance processing during a pause
instance_deactivate_all(true);

// Create an instance of the object controller that was passed
paused_obj_instance = instance_create_layer(0, 0, "Instances", paused_obj);