script.reload("player/silver.lua")
c_lockon = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 100 * meter,
  z = 750 * meter,
  far_x = 150 * meter,
  far_y = 600 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
