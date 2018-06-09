script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
end
function SetupModuleDebugSub(_ARG_0_)
  OpenVehicleDebug(_ARG_0_)
end
debug = not_use
c_module_state = state_module_supershadow
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_normal
c_input_system = input_system_none
c_module_gravity = use
c_model_package = "player/supershadow"
c_module_impulse = impulse_module_none
c_gauge_max = 100 * point
c_gauge_bias = 1
c_level_max = 3
c_gauge_heal_wait = 0 * sec
c_gauge_consumption_0 = 0 * (point / sec)
c_gauge_consumption_1 = 2.5 * (point / sec)
c_gauge_consumption_2 = 3.3 * (point / sec)
c_gauge_consumption_3 = 5 * (point / sec)
c_input_border = 0.1
c_dclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_chaos_spear_damage = 100
c_chaos_spear_power = 50 * N
c_chaos_spear_speed = 50 * (meter / sec)
c_chaos_spear_atime = 1
c_lockon_chaos_spear = {
  type = shape_frustum,
  near_x = 1 * meter,
  near_y = 1 * meter,
  z = 10 * meter,
  fov = 30 * deg,
  rotate = {
    x = 30 * deg,
    y = 0 * deg,
    z = 0 * deg
  },
  offset = {
    x = 0 * meter,
    y = 0.75 * meter,
    z = 0.5 * meter
  },
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_chaos_spread_count = 5
c_chaos_spread_damage = 100
c_chaos_spread_power = 50 * N
c_chaos_spread_speed = 50 * (meter / sec)
c_chaos_spread_atime = 1
c_lockon_chaos_spread = {
  type = shape_frustum,
  near_x = 1 * meter,
  near_y = 1 * meter,
  z = 10 * meter,
  fov = 30 * deg,
  rotate = {
    x = 30 * deg,
    y = 0 * deg,
    z = 0 * deg
  },
  offset = {
    x = 0 * meter,
    y = 0.75 * meter,
    z = 0.5 * meter
  },
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_blast_damage = 100
c_blast_power = 50 * N
c_chaos_barrier_power = 50 * N
c_chaos_barrier = {
  type = shape_sphere,
  radius = 2 * meter,
  offset = {
    x = 0 * meter,
    y = -2 * meter,
    z = 0 * meter
  }
}
c_lockon_homing = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 6 * meter,
  z = 10 * meter,
  far_x = 10 * meter,
  far_y = 10 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_homing
}
c_lockon = {
  type = shape_convex_box,
  near_x = 3 * meter,
  near_y = 1 * meter,
  z = 10 * meter,
  far_x = 3 * meter,
  far_y = 1 * meter
}
c_rotation_method = input_method_sonic_v1
c_rotation_speed = 8 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 20 * deg
c_downforce = 0.2 * meter
c_brake_acc = 40 * meter
c_walk_border = 0.1
c_run_border = 0.9
c_walk_speed_max = 4 * (meter / sec)
c_run_speed_max = 15 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 18 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 20 * meter
l_run_acc = 2 * sec
l_jump_hight = 4 * meter
l_jump_walk = 8 * meter
l_jump_run = 16 * meter
c_brake_quick_acc = 30 * meter
c_wait_no_input_time = 15 * sec
c_damage_time = 1 * sec
c_damage_jump = 2 * (meter / sec)
c_damage_speed = -1 * (meter / sec)
c_run_against_time = 1 * sec
c_grind_speed_org = 23 * (meter / sec)
c_grind_acc = 15 * meter
c_grind_speed_max = 40 * meter
c_grind_time = 0.3 * sec
c_grind_penalty_time = 0.8 * sec
c_grind_brake_acc = 2 * meter
c_brake_dashpanel = 10 * meter
c_speedup_speed_max = 40 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = 2 * (meter / sec)
c_jump_run = 9 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_homing_dir = {
  x = 0 * meter,
  y = -0.5 * meter,
  z = 1 * meter
}
c_homing_spd = 40 * (meter / sec)
c_homing_time = 0.3 * sec
c_homing_damage = 1 * point
c_homing_power = 300 * N
c_homing_grind_range = 10 * meter
c_chaos_spear_accumulate_wait = 0.5 * sec
c_chaos_spear_stiffening_time = 0.3 * sec
c_chaos_smash_accumulate_wait = 0.5 * sec
c_chaos_smash_preliminary = 0.2 * sec
