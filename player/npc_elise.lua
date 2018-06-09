script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
end
function SetupModuleDebugSub(_ARG_0_)
end
debug = not_use
c_module_state = state_module_easy
c_module_model = model_module_sonic_new
c_system_model = model_system_princess
c_posture_control = posture_control_normal
c_input_system = input_system_none
c_module_gravity = not_use
c_model_package = "player/npc_elise_princess"
c_model_package_princess = "player/npc_elise_princess"
c_model_package_hair = "player/npc_elise_hair"
c_module_impulse = impulse_module_none
c_input_border = 0.1
c_dclick_time = 0.16 * sec
c_lclick_time = 0.16 * sec
script.reload("player/collision_standard.lua")
c_collision_lightdash = {
  type = shape_cylinder,
  radius = 1.5 * meter,
  height = 1 * meter
}
c_rotation_method = input_method_mario64
c_rotation_speed = 1 * (meter / sec)
c_weight = 20 * kg
c_slope_rad = 30 * deg
c_slope_rad_b = 10 * deg
c_downforce = 0.15 * meter
c_brake_acc = 40 * meter
c_walk_border = 0.1
c_run_border = 0.9
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
c_speedup_speed_max = 40 * (meter / sec)
l_speedup_acc = 0.5 * sec
c_run_acc = (c_run_speed_max - c_walk_speed_max) / l_run_acc
c_jump_speed = 9 * (meter / sec)
c_jump_walk = 2 * (meter / sec)
c_jump_run = 9 * (meter / sec)
c_speedup_acc = (c_speedup_speed_max - c_walk_speed_max) / l_speedup_acc
