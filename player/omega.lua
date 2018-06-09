script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenGameMaster(_ARG_0_, gamemaster_module_player)
  OpenWeapons(_ARG_0_, other_module_omega_weapons)
  OpenLockOn(_ARG_0_, "lockon_laser", stepable_inter)
  OpenLockOn(_ARG_0_, "lockon_launcher", stepable_inter)
  OpenEffect(_ARG_0_, effect_module_standard, "player_omega")
  OpenEffect(_ARG_0_, effect_module_omega, "player_omega")
  OpenSound(_ARG_0_, sound_module_omega, "player_omega")
  OpenOther(_ARG_0_, other_module_amigo_change)
  OpenAI(_ARG_0_, ai_module_amigo)
  OpenOther(_ARG_0_, other_module_talk)
end
function SetupModuleDebugSub(_ARG_0_)
end
c_player_name = "omega"
debug = not_use
c_module_state = state_module_omega
c_module_model = model_module_sonic_new
c_system_model = model_system_omega
c_posture_control = posture_control_normal
c_input_system = input_system_normal
c_module_gravity = use
c_model_package = "player/omega"
c_module_impulse = impulse_module_standard
psi_power = 0 * point
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_omega_shot_damage = 1
c_omega_shot_power = 50 * N
c_omega_shot = {
  type = shape_cylinder,
  radius = 1.5 * meter,
  height = 3 * meter,
  rotate = {
    x = 0 * deg,
    y = 0 * deg,
    z = 0 * deg
  },
  offset = {
    x = 0 * meter,
    y = -1.25 * meter + 0.5 * meter,
    z = 1.25 * meter
  }
}
c_omega_launcher_damage = 1
c_omega_launcher_power = 50 * N
c_omega_launcher_speed = 50 * (meter / sec)
c_omega_launcher_atime = 1
c_lockon_launcher = {
  type = shape_frustum,
  near_x = 1 * meter,
  near_y = 1 * meter,
  z = 100 * meter,
  fov = 30 * deg,
  rotate = {
    x = 30 * deg,
    y = 0 * deg,
    z = 0 * deg
  },
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_omega_laser_damage = 1
c_omega_laser_power = 50 * N
c_omega_laser_speed = 50 * (meter / sec)
c_omega_laser_atime = 1
c_lockon_laser = {
  type = shape_convex_box,
  near_x = 20 * meter,
  near_y = 50 * meter,
  z = 300 * meter,
  far_x = 100 * meter,
  far_y = 300 * meter,
  offset = {
    x = 0 * meter,
    y = 0.5 * meter,
    z = 5 * meter
  },
  sort = lockon_sort_priority_and_distance,
  lockon = lockon_type_lockon
}
c_rotation_method = input_method_mario64
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 40 * deg
c_slope_rad_b = 20 * deg
c_downforce = 0.2 * meter
c_brake_acc = 40 * meter
c_walk_border = 0.1
c_run_border = 0.6
c_walk_speed_max = 3 * (meter / sec)
c_run_speed_max = 20 * (meter / sec)
c_jump_time_min = 0.1 * sec
c_jump_brake = 18 * (meter / sec)
c_jump_speed_acc = 20 * meter
c_jump_speed_brake = 10 * meter
l_run_acc = 3 * sec
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
c_grind_acc = 5 * meter
c_grind_speed_max = 15 * meter
c_grind_time = 0.3 * sec
c_grind_penalty_time = 0.8 * sec
c_grind_brake_acc = 2 * meter
c_brake_dashpanel = 10 * meter
c_speedup_speed_max = 30 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = Sqrt(2 * gravity * l_jump_hight)
c_jump_walk = l_jump_walk / (2 * Sqrt(2 * l_jump_hight / gravity))
c_jump_run = l_jump_run / (2 * Sqrt(2 * l_jump_hight / gravity))
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
c_brake_acc_sand = c_brake_acc * 2
c_run_acc_sand = c_run_acc * 0.5
c_jump_speed_sand = SpeedByHeightBias(c_jump_speed, 0.5)
c_hovering_acc = 8 * meter
c_reload_shot = 0.5 * sec
c_reload_launcher = 0.5 * sec
c_launcher_set = 2
