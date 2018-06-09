pi = 3.141592653589793
meter = 100
km = 1000 * meter
kg = 1000
sec = 1
gravity = 9.8 * meter / (sec * sec)
point = 1
deg = pi / 180
N = meter / (sec * sec)
c_sound_velocity = 299792458 * (meter / sec)
c_light_velocity = 299792458 * (meter / sec)
not_use = 0
use = 1
state_module_sonic = 0
state_module_venice = 1
state_module_shadow = 2
state_module_debug = 3
state_module_snow_board = 4
state_module_fast = 5
state_module_easy = 6
state_module_omega = 7
state_module_amy = 8
state_module_blaze = 9
state_module_knuckles = 10
state_module_rouge = 11
state_module_tails = 12
state_module_supersonic = 13
state_module_supershadow = 14
state_module_supersilver = 15
state_module_princess = 16
state_module_boss_silver = 17
state_module_boss_sonic = 18
state_module_boss_shadow = 19
state_module_title = 20
model_system_standard = 0
model_system_psi = 1
model_system_easy = 2
model_system_princess = 3
model_system_sonic = 4
model_system_omega = 5
model_module_sonic_new = 0
model_module_sonic_fast = 1
model_module_sonic_easy = 2
model_module_snowboard = 3
posture_control_normal = 0
posture_control_debug = 1
posture_control_snow_board = 2
posture_control_none = 3
posture_control_anubis = 4
input_system_normal = 0
input_system_debug = 1
input_system_snow_board = 2
input_system_none = 3
input_system_vehicle = 4
input_system_anubis = 5
stepable_pre = 0
stepable_inter = 1
stepable_post = 2
impulse_module_none = 0
impulse_module_standard = 1
impulse_module_snowboard = 2
effect_module_none = 0
effect_module_standard = 1
effect_module_snowboard = 2
effect_module_shadow = 3
effect_module_venice = 4
effect_module_tails = 5
effect_module_knuckles = 6
effect_module_amy = 7
effect_module_blaze = 8
effect_module_omega = 9
effect_module_rouge = 10
effect_module_sonic = 11
effect_module_supersonic = 12
effect_module_supershadow = 13
effect_module_supersilver = 14
effect_module_princess = 15
sound_module_none = 0
sound_module_standard = 1
sound_module_sonic = 2
sound_module_shadow = 3
sound_module_venice = 4
sound_module_snowboard = 5
sound_module_fast = 6
sound_module_tails = 7
sound_module_knuckles = 8
sound_module_amy = 9
sound_module_blaze = 10
sound_module_omega = 11
sound_module_rouge = 12
sound_module_supersonic = 13
sound_module_supershadow = 14
sound_module_supersilver = 15
sound_module_bosssonic = 16
sound_module_bossshadow = 17
sound_module_bosssilver = 18
shape_sphere = 0
shape_box = 1
shape_cylinder = 2
shape_convex_box = 3
shape_capsule = 4
shape_frustum = 5
other_module_omega_weapons = 0
other_module_shadow_weapons = 1
other_module_sonic_weapons = 2
other_module_venice_weapons = 3
other_module_tails_weapons = 4
other_module_amy_weapons = 5
other_module_blaze_weapons = 6
other_module_knuckles_weapons = 7
other_module_rouge_weapons = 8
other_module_princess_weapons = 9
other_module_boss_silver_weapons = 10
other_module_supersonic_weapons = 11
other_module_supershadow_weapons = 12
other_module_supersilver_weapons = 13
other_module_sonic_homing = 0
other_module_shadow_chaossnap = 1
other_module_knuckles_homing = 2
other_module_talk = 3
other_module_rodeo = 4
other_module_amigo_change = 5
other_module_waterslider = 6
other_module_tarzan = 7
other_module_item = 8
other_module_blaze_homing = 9
gauge_module_sonic = 0
gauge_module_shadow = 1
gauge_module_venice = 2
gauge_module_princess = 3
gauge_module_boss = 4
gauge_module_supersonic = 5
lockon_module_normal = 0
lockon_module_homing = 1
gamemaster_module_player = 0
gamemaster_module_boss = 1
ai_module_boss_shadow = 0
ai_module_boss_silver = 1
ai_module_boss_sonic = 2
ai_module_amigo = 3
lockon_type_lockon = 0
lockon_type_homing = 1
lockon_type_lightdash = 2
lockon_type_psi = 3
lockon_type_chase = 4
lockon_sort_none = 0
lockon_sort_priority_and_distance = 1
lockon_sort_distance = 2
score_removering_algorithm_round = 0
score_removering_algorithm_damage_dir = 1
score_removering_algorithm_physics = 2
input_method_mario64 = 0
input_method_sonic_v1 = 1
equip_lightdash = 1
equip_sliding = 2
equip_boundjump = 4
equip_homingsmash = 8
equip_gem_green = 16
equip_gem_red = 32
equip_gem_blue = 64
equip_gem_white = 128
equip_gem_sky = 256
equip_gem_yellow = 512
equip_gem_purple = 1024
equip_gem_super = 2048
equip_shadow_lightdash = 4096
equip_shadow_boost_lv1 = 8192
equip_shadow_boost_lv2 = 16384
equip_shadow_boost_lv3 = 32768
equip_silver_holdsmash = 65536
equip_silver_catch_all = 131072
equip_silver_teleport = 262144
equip_silver_psychoshock = 524288
equip_silver_speedup = 1048576
c_wind_init = 2.5 * (meter / sec)
c_wind_spd = 0.98 * (meter / sec)
c_wind_dist = 0.98 * (meter / sec)
l_border_gravity = 5 * meter
c_landing_time = 0.1 * sec
c_posture_continue_num = 100
c_posture_continue_len = 0.1 * meter
c_posture_inertia_move = 3 * (meter / sec)
c_invincible_time = 5 * sec
c_invincible_time_ring1 = 0.5 * sec
c_invincible_item = 20 * sec
c_speedup_time = 15 * sec
c_camera = {
  x = 0 * meter,
  y = 0.7 * meter,
  z = 0 * meter
}
c_amigo_point_0 = {
  x = -1 * meter,
  y = 0 * meter,
  z = -1 * meter
}
c_amigo_point_1 = {
  x = 1 * meter,
  y = 0 * meter,
  z = -1 * meter
}
c_gauge_up = 100 * point
c_dead_animation_time = 1 * sec
c_dead_animation_time_coll = 3 * sec
c_score_removering_by_damage = 20
c_distance_binormal = 6 * meter
c_waterslider_lr = 8 * (meter / sec)
c_pass_fluid = 1 * (meter / sec)
c_stun = 2 * sec
c_psi_throw_speed = 50 * (meter / sec)
c_automatic_dead = {
  inf = {
    x = -2.5 * km,
    y = -2.5 * km,
    z = -2.5 * km
  },
  sup = {
    x = 2.5 * km,
    y = 2.5 * km,
    z = 2.5 * km
  }
}
c_equip_flag_table = {
  {global_flag = 6000, equip_flag = equip_lightdash},
  {global_flag = 6001, equip_flag = equip_sliding},
  {global_flag = 6002, equip_flag = equip_boundjump},
  {global_flag = 6003, equip_flag = equip_homingsmash},
  {global_flag = 6004, equip_flag = equip_gem_green},
  {global_flag = 6005, equip_flag = equip_gem_red},
  {global_flag = 6006, equip_flag = equip_gem_blue},
  {global_flag = 6007, equip_flag = equip_gem_white},
  {global_flag = 6008, equip_flag = equip_gem_sky},
  {global_flag = 6009, equip_flag = equip_gem_yellow},
  {global_flag = 6010, equip_flag = equip_gem_purple},
  {global_flag = 6011, equip_flag = equip_gem_super},
  {global_flag = 6012, equip_flag = equip_shadow_lightdash},
  {global_flag = 6013, equip_flag = equip_shadow_boost_lv1},
  {global_flag = 6014, equip_flag = equip_shadow_boost_lv2},
  {global_flag = 6015, equip_flag = equip_shadow_boost_lv3},
  {global_flag = 6016, equip_flag = equip_silver_holdsmash},
  {global_flag = 6017, equip_flag = equip_silver_catch_all},
  {global_flag = 6018, equip_flag = equip_silver_teleport},
  {global_flag = 6019, equip_flag = equip_silver_psychoshock},
  {global_flag = 6020, equip_flag = equip_silver_speedup}
}
c_border_gravity = Sqrt(2 * gravity * l_border_gravity)
function SetupModule(_ARG_0_)
  OpenPackage(_ARG_0_, c_model_package)
  OpenFrame(_ARG_0_)
  OpenInput(_ARG_0_, c_input_system)
  OpenModel(_ARG_0_, c_system_model, c_module_model)
  OpenPostureControl(_ARG_0_, c_posture_control)
  OpenGravity(_ARG_0_, c_module_gravity)
  OpenState(_ARG_0_, c_module_state)
  OpenZock(_ARG_0_)
  OpenPerformance(_ARG_0_)
  OpenImpulse(_ARG_0_, c_module_impulse)
  OpenPath(_ARG_0_)
  OpenScore(_ARG_0_)
  OpenBodyList(_ARG_0_)
  OpenEventer(_ARG_0_)
  OpenBody(_ARG_0_)
  OpenAutomaticDead(_ARG_0_)
  SetupModuleSub(_ARG_0_)
end
function SetupModuleDebug(_ARG_0_)
  OpenPackage(_ARG_0_, c_model_package)
  OpenFrame(_ARG_0_)
  OpenInput(_ARG_0_, input_system_debug)
  OpenModel(_ARG_0_, c_system_model, c_module_model)
  OpenPostureControl(_ARG_0_, posture_control_debug)
  OpenGravity(_ARG_0_, not_use)
  OpenState(_ARG_0_, state_module_debug)
  OpenZock(_ARG_0_)
  OpenScore(_ARG_0_)
  SetupModuleDebugSub(_ARG_0_)
end
function HeightToSpeed(_ARG_0_)
  return Sqrt(2 * gravity * _ARG_0_)
end
function SpeedToHeight(_ARG_0_)
  return _ARG_0_ * _ARG_0_ * 0.5 / gravity
end
function SpeedByHeightBias(_ARG_0_, _ARG_1_)
  return HeightToSpeed(SpeedToHeight(_ARG_0_) * _ARG_1_)
end
function HeightAndDistanceToSpeed(_ARG_0_, _ARG_1_)
  return _ARG_1_ / (2 * Sqrt(2 * _ARG_0_ / gravity))
end
script.reload("player/amigo.lua")
