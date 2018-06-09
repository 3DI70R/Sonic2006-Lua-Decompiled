script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_boss)
  OpenLockOn(_ARG_0_, "lockon", stepable_inter)
  OpenLockOn(_ARG_0_, "lockon_psi", stepable_inter)
  OpenEffect(_ARG_0_, effect_module_venice, "player_silver")
  OpenWeapons(_ARG_0_, other_module_venice_weapons)
  OpenWeapons(_ARG_0_, other_module_boss_silver_weapons)
  OpenAI(_ARG_0_, ai_module_boss_silver)
  OpenGauge(_ARG_0_, gauge_module_boss)
  OpenSound(_ARG_0_, sound_module_bosssilver, "boss_silver")
end
function SetupModuleDebugSub(_ARG_0_)
end
c_gauge_boss_max = 6
c_resetposition_dist = 1000 * meter
c_boss_explosion_start = 2 * meter
c_boss_explosion_end = 4 * meter
c_boss_explosion_height = 2 * meter
debug = not_use
c_module_state = state_module_boss_silver
c_module_model = model_module_sonic_new
c_system_model = model_system_psi
c_posture_control = posture_control_normal
c_input_system = input_system_none
c_module_gravity = use
c_model_package = "player/boss_silver"
c_module_impulse = impulse_module_standard
c_priority_lockon = 10
c_priority_homing = 10
c_boss_score = 10000
c_boss_event = {
  dead = "boss_is_dead"
}
c_framelink = {
  {
    from = "LowLeftHair1",
    to = "LowLeftHair01a"
  },
  {
    from = "LowRightHair1",
    to = "LowRightHair01a"
  }
}
psi_power = 100 * point
c_input_border = 0.1
c_dclick_time = 0.25 * sec
script.reload("player/collision_standard.lua")
c_boss_psicatch = {
  type = shape_sphere,
  radius = 4 * meter,
  offset = {
    x = 0 * meter,
    y = -4 * meter,
    z = 0 * meter
  }
}
c_lockon = {
  type = shape_convex_box,
  near_x = 50 * meter,
  near_y = 50 * meter,
  z = 300 * meter,
  far_x = 200 * meter,
  far_y = 300 * meter,
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_lockon_psi = {
  type = shape_sphere,
  radius = 100 * meter,
  offset = {
    x = 0 * meter,
    y = -50 * meter,
    z = 0 * meter
  },
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_psi
}
c_rotation_method = input_method_mario64
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 30 * deg
c_downforce = 0.2 * meter
c_brake_acc = 40 * meter
c_walk_border = 0.17
c_run_border = 0.9
c_walk_speed_max = 1.5 * (meter / sec)
c_run_speed_max = 7.5 * (meter / sec)
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
c_speedup_speed_max = 40 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = 2 * (meter / sec)
c_jump_run = 5.3 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
l_tele_dash = 4 * meter
c_tele_dash_time = 0.1 * sec
c_tele_dash_brake = 180 * meter
c_tele_dash_post = 2 * (meter / sec)
c_float_walk_border = 0.1
c_float_walk_speed = 10 * (meter / sec)
c_tele_dash_input = 0.3 * sec
c_float_input = 0.2 * sec
c_tele_dash_speed = l_tele_dash / c_tele_dash_time
c_psi_gauge_catch_one = 2 * point
c_psi_gauge_catch_all = 3 * point
l_psi_gauge_catch_ride = 3.5 * sec
c_psi_gauge_catch_smash = 0 * point
c_psi_gauge_teleport_dash = 15 * point
l_psi_gauge_float = 20 * meter
c_psi_gauge_action = 10 * point
c_psi_gauge_upheave = 10 * point
l_psi_gauge_burst = 10 * sec
c_psi_gauge_heal = 50 * point
c_psi_gauge_heal_delay = 0.5 * sec
l_psi_gauge_water = 20 * meter
c_radius = 7 * meter
c_psychosmash_begin = 1 * meter
c_psychosmash_charge_rad = 1.5 * meter
c_psychosmash_charge_time = 0.5 * sec
c_psychosmash_time = 2 * sec
c_psychosmash_power = 50 * N
c_catch_one_theta = 30 * deg
c_catch_one_begin = 1 * meter
c_catch_one_end = 3 * meter
l_catch_one_speed = 0.2 * sec
c_catch_one_time = 1 * sec
c_dunk_charge_time = 0.18 * sec
c_dunk_radius_start = 1 * meter
c_dunk_radius_end = 4 * meter
c_dunk_time = 0.2 * sec
c_dunk_time_remain = 0.5 * sec
c_psi_gauge_catch_ride = psi_power / l_psi_gauge_catch_ride
c_psi_gauge_float = psi_power / (l_psi_gauge_float / c_float_walk_speed)
c_psi_gauge_water = psi_power / (l_psi_gauge_water / c_float_walk_speed)
c_psi_gauge_burst = psi_power / l_psi_gauge_burst
c_catch_one_speed = (c_catch_one_end - c_catch_one_begin) / l_catch_one_speed
