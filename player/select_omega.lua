script.reload("player/common.lua")
function SetupModuleSub(_ARG_0_)
  OpenModel(_ARG_0_, model_system_easy, "player/select_omega", "stomach", "Spine1")
  OpenModel(_ARG_0_, model_system_easy, "player/select_omega", "hand_r", "RightWrist")
  OpenModel(_ARG_0_, model_system_easy, "player/select_omega", "hand_l", "LeftWrist")
  OpenModel(_ARG_0_, model_system_easy, "player/select_omega", "arm_r", "RightForeArm")
  OpenModel(_ARG_0_, model_system_easy, "player/select_omega", "arm_l", "LeftForeArm")
end
function SetupModuleDebugSub(_ARG_0_)
end
debug = not_use
c_module_state = state_module_title
c_module_model = model_module_sonic_new
c_system_model = model_system_standard
c_posture_control = posture_control_none
c_input_system = input_system_none
c_module_gravity = not_use
c_model_package = "player/select_omega"
c_module_impulse = impulse_module_none
