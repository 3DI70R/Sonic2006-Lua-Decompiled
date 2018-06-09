g_mission_information = {
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/boss/thirdiblis_flc",
  mission_event_start = "e0227",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
