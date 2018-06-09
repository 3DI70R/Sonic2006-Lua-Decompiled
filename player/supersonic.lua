script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenLockOn(_ARG_0_, "lockon", stepable_inter)
  OpenEffect(_ARG_0_, effect_module_supersonic, "player_sonic")
  OpenSound(_ARG_0_, sound_module_supersonic, "player_super3")
  OpenGauge(_ARG_0_, gauge_module_supersonic)
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "sonic"
debug = not_use
c_module_state = state_module_supersonic
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_anubis
c_input_system = input_system_anubis
c_module_gravity = use
c_model_package = "player/supersonic"
c_module_impulse = impulse_module_none
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
c_speed_yaw = 20 * (deg / sec)
c_speed_pitch = 15 * (deg / sec)
c_pitch_max = 20 * deg
c_brake_acc = 20 * (deg / sec)
c_walk_border = 0.1
c_run_border = 0.6
c_walk_speed_max = 45 * (deg / sec)
c_run_speed_max = 60 * (meter / sec)
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
c_jump_walk = HeightAndDistanceToSpeed(l_jump_walk, l_jump_hight)
c_jump_run = 9 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_sliding_damage = 1 * point
c_default_ring = 50
c_super_ring_dec = 0.5 * (point / sec)
c_super_ring_inc = 0.2 * (point / sec)
c_super_gauge_charge = 20 * (point / sec)
c_light_attack = 3 * point
