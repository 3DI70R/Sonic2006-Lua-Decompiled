script.reload("player/sonic_new.lua")
c_lockon_homing = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 15 * meter,
  z = 45 * meter,
  far_x = 15 * meter,
  far_y = 30 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_homing
}
