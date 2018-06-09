script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenLockOn(_ARG_0_, "lockon", stepable_inter)
  OpenOther(_ARG_0_, other_module_sonic_homing)
  OpenLockOn(_ARG_0_, "lockon_homing", stepable_pre)
  OpenLightDash(_ARG_0_)
  OpenLockOn(_ARG_0_, "lockon_lightdash", stepable_inter)
  OpenEffect(_ARG_0_, effect_module_standard, "player_sonic")
  OpenSound(_ARG_0_, sound_module_fast, "player_sonic")
  OpenGauge(_ARG_0_, gauge_module_sonic)
  OpenAI(_ARG_0_, ai_module_amigo)
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "sonic"
debug = not_use
c_module_state = state_module_fast
c_module_model = model_module_sonic_fast
c_system_model = model_system_standard
c_posture_control = posture_control_normal
c_input_system = input_system_normal
c_module_gravity = use
c_model_package = "player/sonic_fast"
c_module_impulse = impulse_module_standard
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
  near_y = 150 * meter,
  z = 300 * meter,
  far_x = 10 * meter,
  far_y = 300 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_lockon_homing = {
  type = shape_convex_box,
  near_x = 5 * meter,
  near_y = 5 * meter,
  z = 10 * meter,
  far_x = 10 * meter,
  far_y = 15 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_homing
}
c_lockon_lightdash = {
  type = shape_cylinder,
  radius = 10 * meter,
  height = 4 * meter,
  sort = lockon_sort_distance,
  lockon = lockon_type_lightdash
}
c_collision_homing = {
  type = shape_sphere,
  radius = 0.6 * meter
}
c_rotation_method = input_method_sonic_v1
c_rotation_speed = 1.5 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 30 * deg
c_slope_rad_b = 10 * deg
c_downforce = 0.8 * meter
c_brake_acc = 20 * meter
c_brake_quick_acc = 30 * meter
c_walk_border = 0.1
c_run_border = 0.7
c_walk_speed_max = 55 * (meter / sec)
c_run_speed_max = 80 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 18 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 10 * meter
l_run_acc = 8 * sec
l_jump_hight = 4 * meter
l_jump_walk = 8 * meter
l_jump_run = 16 * meter
c_brake_dashpanel = 10 * meter
c_speedup_speed_max = 40 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_homing_dir = {
  x = 0 * meter,
  y = -0.1 * meter,
  z = 1 * meter
}
c_homing_spd = 60 * (meter / sec)
c_homing_time = 1 * sec
c_homing_damage = 1 * point
c_homing_power = 300 * N
c_lightdash_speed = 120 * (meter / sec)
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = 60 * (meter / sec)
c_jump_run = 100 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_brake_acc_sand = c_brake_acc * 2
c_run_acc_sand = c_run_acc * 0.5
c_jump_speed_sand = SpeedByHeightBias(c_jump_speed, 0.5)
