script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenWeapons(_ARG_0_, other_module_blaze_weapons)
  OpenLockOn(_ARG_0_, "lockon_homing", stepable_pre)
  OpenOther(_ARG_0_, other_module_blaze_homing)
  OpenEffect(_ARG_0_, effect_module_blaze, "player_blaze")
  OpenSound(_ARG_0_, sound_module_blaze, "player_blaze")
  OpenOther(_ARG_0_, other_module_amigo_change)
  OpenAI(_ARG_0_, ai_module_amigo)
  OpenOther(_ARG_0_, other_module_talk)
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "blaze"
debug = not_use
c_module_state = state_module_blaze
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_normal
c_input_system = input_system_normal
c_module_gravity = use
c_model_package = "player/blaze"
c_module_impulse = impulse_module_standard
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.3 * sec
script.reload("player/collision_standard.lua")
c_collision_homing = {
  type = shape_sphere,
  radius = 0.8 * meter
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
c_rotation_method = input_method_mario64
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 30 * deg
c_downforce = 0.2 * meter
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
c_speedup_speed_max = 30 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = HeightAndDistanceToSpeed(l_jump_walk, l_jump_hight)
c_jump_run = 9 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_brake_acc_sand = c_brake_acc * 2
c_run_acc_sand = c_run_acc * 0.5
c_jump_speed_sand = SpeedByHeightBias(c_jump_speed, 0.5)
c_homing_dir = {
  x = 0 * meter,
  y = 0 * meter,
  z = 1 * meter
}
c_homing_spd = 20 * (meter / sec)
c_homing_time = 1 * sec
c_homing_damage = 1 * point
c_homing_power = 300 * N
c_spinning_claw_min = 3 * sec
c_spinning_claw_max = 15 * sec
