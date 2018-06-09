script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenModel(_ARG_0_, model_system_easy, "player/common", "snow_board_csc", "LeftToeBase")
  OpenEffect(_ARG_0_, effect_module_snowboard, "player_sonic")
  OpenSound(_ARG_0_, sound_module_snowboard, "player_sonic")
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "sonic"
debug = not_use
c_module_state = state_module_snow_board
c_module_model = model_module_snowboard
c_system_model = model_system_standard
c_posture_control = posture_control_snow_board
c_input_system = input_system_snow_board
c_module_gravity = use
c_model_package = "player/snow_board"
c_module_impulse = impulse_module_snowboard
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_lockon = {
  type = shape_convex_box,
  near_x = 3 * meter,
  near_y = 1 * meter,
  z = 10 * meter,
  far_x = 3 * meter,
  far_y = 1 * meter
}
c_rotation_method = input_method_sonic_v1
c_rotation_speed = 0.9 * (meter / sec)
c_weight = 100 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 160 * deg
c_downforce = 1 * meter
c_turn_curving = 0.5
c_turn_drift = -1
c_interp_curving = 0.25
c_interp_drift = 0.5
c_interp_gravity = 0.2
c_min_speed = 0.3 * (meter / sec)
c_max_speed = 25 * (meter / sec)
c_acceleration = 25 * (meter / (sec * sec))
c_brake = 100 * (meter / (sec * sec))
l_base_jump = 0.3 * meter
l_high_jump = 3 * meter
c_jump_time = 3 * sec
c_brake_curving = 5 * (meter / (sec * sec))
c_brake_drift = 20 * (meter / (sec * sec))
l_jump_walk = 10 * meter
l_jump_run = 20 * meter
c_walk_border = 0.1
c_grind_speed_org = 30 * (meter / sec)
c_grind_acc = 35 * meter
c_grind_speed_max = 40 * meter
c_grind_time = 0.3 * sec
c_grind_penalty_time = 0.8 * sec
c_grind_brake_acc = 1 * meter
c_jump_brake = 18 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 10 * meter
c_brake_quick_acc = 30 * meter
c_base_jump = HeightToSpeed(l_base_jump)
c_high_jump = HeightToSpeed(l_high_jump)
c_jump_walk = HeightAndDistanceToSpeed(l_high_jump, l_jump_walk)
c_jump_run = HeightAndDistanceToSpeed(l_high_jump, l_jump_run)
