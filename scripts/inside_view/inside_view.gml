
function inside_view(){
return collision_rectangle(
    camera_get_view_x(view_camera[0]),
    camera_get_view_y(view_camera[0]),
    camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),
    camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
    id,
    false,
    false
    )
}