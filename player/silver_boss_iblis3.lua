script.reload("player/silver.lua")
c_lockon = {
  type = shape_convex_box,
  near_x = 25 * meter,
  near_y = 50 * meter,
  z = 1500 * meter,
  far_x = 500 * meter,
  far_y = 1000 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_camera = {
  x = 0 * meter,
  y = 1.25 * meter,
  z = 0 * meter
}
