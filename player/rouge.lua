script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenWeapons(_ARG_0_, other_module_rouge_weapons)
  OpenEffect(_ARG_0_, effect_module_rouge, "player_rouge")
  OpenSound(_ARG_0_, sound_module_rouge, "player_rouge")
  OpenOther(_ARG_0_, other_module_amigo_change)
  OpenOther(_ARG_0_, other_module_tarzan)
  OpenInput(_ARG_0_, input_system_vehicle)
  OpenAI(_ARG_0_, ai_module_amigo)
  OpenOther(_ARG_0_, other_module_talk)
  OpenLockOn(_ARG_0_, "lockon", stepable_inter)
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "rouge"
debug = not_use
c_module_state = state_module_rouge
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_normal
c_input_system = input_system_normal
c_module_gravity = use
c_model_package = "player/rouge"
c_module_impulse = impulse_module_standard
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_lockon = {
  type = shape_frustum,
  near_x = 1 * meter,
  near_y = 1 * meter,
  z = 10 * meter,
  fov = 30 * deg,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_rotation_method = input_method_mario64
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 30 * deg
c_downforce = 0.2 * meter
c_brake_acc = 40 * meter
c_walk_border = 0.17
c_run_border = 0.6
c_walk_speed_max = 1.5 * (meter / sec)
c_run_speed_max = 9 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 16 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 10 * meter
l_run_acc = 1 * sec
l_jump_hight = 4 * meter
l_jump_walk = 5 * meter
l_jump_run = 10 * meter
c_brake_quick_acc = 30 * meter
c_wait_no_input_time = 15 * sec
c_damage_time = 1 * sec
c_damage_jump = 2 * (meter / sec)
c_damage_speed = -1 * (meter / sec)
c_run_against_time = 1 * sec
c_grind_speed_org = 23 * (meter / sec)
c_grind_acc = 15 * meter
c_grind_speed_max = 35 * meter
c_grind_time = 0.7 * sec
c_grind_penalty_time = 0.5 * sec
c_grind_brake_acc = 1 * meter
c_brake_dashpanel = 15 * meter
c_speedup_speed_max = 30 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = 2 * (meter / sec)
c_jump_run = 5.3 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_brake_acc_sand = c_brake_acc * 2
c_run_acc_sand = c_run_acc * 0.5
c_jump_speed_sand = SpeedByHeightBias(c_jump_speed, 0.5)
c_flight_acc = 9 * (meter / sec)
c_power_bomb = 500 * N
c_throw_bomb = 500
c_flight_speed_acc = 17 * (meter / (sec * sec))
c_flight_speed_min = 10 * (meter / sec)
c_flight_speed_max = 17 * (meter / sec)
c_climb_speed = 7 * (meter / sec)
c_blast_timer = 0.5 * sec
