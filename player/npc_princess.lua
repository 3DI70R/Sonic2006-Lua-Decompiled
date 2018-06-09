script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
end
function SetupModuleDebugSub(_ARG_0_)
end
debug = not_use
c_module_state = state_module_princess
c_module_model = model_module_sonic_new
c_system_model = model_system_princess
c_posture_control = posture_control_normal
c_input_system = input_system_none
c_module_gravity = use
c_model_package = "player/princess"
c_model_package_princess = "player/princess_princess"
c_model_package_hair = "player/princess_hair"
c_module_impulse = impulse_module_none
c_hair = {
  "TopHair",
  "HighLeftHair",
  "HighRightHair",
  "LowLeftHair",
  "LowRightHair",
  "MiddleHair"
}
c_gauge_max = 100 * point
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_lockon = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 50 * meter,
  z = 300 * meter,
  far_x = 10 * meter,
  far_y = 300 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_lockon_homing = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 6 * meter,
  z = 13 * meter,
  far_x = 15 * meter,
  far_y = 13 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_homing
}
c_lockon_lightdash = {
  type = shape_cylinder,
  radius = 2 * meter,
  height = 1.5 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_lightdash
}
c_collision_homing = {
  type = shape_sphere,
  radius = 0.8 * meter
}
c_sliding_power = 500 * N
c_sliding_damage = 1 * point
c_sliding_collision = {
  type = shape_sphere,
  radius = 1 * meter,
  offset = {
    x = 0 * meter,
    y = -1 * meter,
    z = 0 * meter
  }
}
c_rotation_method = input_method_sonic_v1
c_rotation_speed = 8 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 30 * deg
c_slope_rad_b = 10 * deg
c_downforce = 0.6 * meter
c_interp_gravity = 0.5
c_brake_acc = 40 * meter
c_walk_border = 0.1
c_run_border = 0.6
c_walk_speed_max = 4 * (meter / sec)
c_run_speed_max = 17 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 25 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 20 * meter
l_run_acc = 2 * sec
l_jump_hight = 4 * meter
l_jump_walk = 8 * meter
l_jump_run = 16 * meter
c_brake_quick_acc = 30 * meter
c_wait_no_input_time = 15 * sec
c_damage_time = 0.8 * sec
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
c_jump_walk = l_jump_walk / (2 * Sqrt(2 * l_jump_hight / gravity))
c_jump_run = 9 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_homing_dir = {
  x = 0 * meter,
  y = 0 * meter,
  z = 1 * meter
}
c_homing_spd = 40 * (meter / sec)
c_homing_time = 0.3 * sec
c_homing_damage = 1 * point
c_homing_power = 300 * N
c_sliding_time = 3 * sec
c_sliding_speed_min = 10 * (meter / sec)
c_sliding_speed_max = 16 * (meter / sec)
c_spindash_spd = 30 * (meter / sec)
c_spindash_time = 3 * sec
l_bound_jump_height0 = 4 * meter
l_bound_jump_height1 = 7 * meter
c_wallwait_time = 0.5 * sec
c_wallrun_spd = 8 * (meter / sec)
c_lightdash_speed = 50 * (meter / sec)
c_boundjump_jmp = -30 * (meter / sec)
c_boundjump_block = 0.2 * sec
c_attack_brake = 20 * (meter / sec)
c_gauge_heal_delay = 0.5 * sec
c_gauge_heal = 50 * (point / sec)
c_gauge_barrier = 10 * (point / sec)
c_bound_jump_spd_0 = HeightToSpeed(l_bound_jump_height0)
c_bound_jump_spd_1 = HeightToSpeed(l_bound_jump_height1)
c_homing_brake = (c_homing_spd - c_jump_run) / c_homing_time
