script.reload("player/silver.lua")
c_lockon = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 25 * meter,
  z = 750 * meter,
  far_x = 100 * meter,
  far_y = 750 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
