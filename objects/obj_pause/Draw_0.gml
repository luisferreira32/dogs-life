/// @description Draw the paused surface
if (draw_prev_surface) {
    draw_surface_ext(
        pause_surface, 
        camera_get_view_x(view_camera[CAMERA_IDX]), 
        camera_get_view_y(view_camera[CAMERA_IDX]),
        camera_get_view_width(view_camera[CAMERA_IDX])/view_wport[VIEW_PORT_IDX],
        camera_get_view_height(view_camera[CAMERA_IDX])/view_hport[VIEW_PORT_IDX],
        0, 
        c_white, 
        1
    );
}
