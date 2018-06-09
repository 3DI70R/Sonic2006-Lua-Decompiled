script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_boss)
  OpenLockOn(_ARG_0_, "lockon", stepable_inter)
  OpenOther(_ARG_0_, other_module_sonic_homing)
  OpenLockOn(_ARG_0_, "lockon_homing", stepable_pre)
  OpenEffect(_ARG_0_, effect_module_standard, "player_sonic")
  OpenSound(_ARG_0_, sound_module_bosssonic, "boss_sonic")
  OpenAI(_ARG_0_, ai_module_boss_sonic)
  OpenGauge(_ARG_0_, gauge_module_boss)
end
function SetupModuleDebugSub(_ARG_0_)
end
debug = not_use
c_module_state = state_module_boss_sonic
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_normal
c_input_system = input_system_none
c_module_gravity = use
c_model_package = "player/boss_sonic"
c_module_impulse = impulse_module_standard
c_priority_lockon = 10
c_priority_homing = 10
c_boss_score = 10000
c_boss_event = {
  dead = "boss_is_dead"
}
c_hair = {
  "TopHair",
  "HighLeftHair",
  "HighRightHair",
  "LowLeftHair",
  "LowRightHair",
  "MiddleHair"
}
c_gauge_boss_max = 20
c_gauge_max = 100 * point
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_collision_lightdash = {
  type = shape_cylinder,
  radius = 2 * meter,
  height = 1 * meter
}
c_lockon = {
  type = shape_sphere,
  radius = 100 * meter,
  offset = {
    x = 0 * meter,
    y = -50 * meter,
    z = 0 * meter
  },
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
c_collision_homing = {
  type = shape_sphere,
  radius = 0.6 * meter
}
c_rotation_method = input_method_sonic_v1
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 30 * deg
c_slope_rad_b = 10 * deg
c_downforce = 0.15 * meter
c_interp_gravity = 0.5
c_brake_acc = 40 * meter
c_walk_border = 0.1
c_run_border = 0.9
c_walk_speed_max = 3 * (meter / sec)
c_run_speed_max = 20 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 18 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 10 * meter
l_run_acc = 1.5 * sec
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
c_resetposition_dist = 1000 * meter
c_homing_smash_time = 2.5
c_piyori_time = 5
c_homing_dir = {
  x = 0 * meter,
  y = -0.5 * meter,
  z = 1 * meter
}
c_homing_spd = 15 * (meter / sec)
c_homing_time = 1 * sec
c_homing_damage = 1 * point
c_homing_power = 6 * 5 * 10 * N
c_homing_grind_range = 10 * meter
c_sliding_time = 3 * sec
c_sliding_power = 10 * 5 * 10 * N
c_sliding_damage = 1 * point
c_spindash_spd = 30 * (meter / sec)
c_spindash_time = 3 * sec
l_bound_jump_height0 = 4 * meter
l_bound_jump_height1 = 7 * meter
c_wallwait_time = 1 * sec
c_wallrun_spd = 3 * (meter / sec)
c_lightdash_speed = 50 * (meter / sec)
c_boundjump_jmp = -30 * (meter / sec)
c_boundjump_block = 0.2 * sec
c_attack_brake = 20 * (meter / sec)
c_bound_jump_spd_0 = HeightToSpeed(l_bound_jump_height0)
c_bound_jump_spd_1 = HeightToSpeed(l_bound_jump_height1)
