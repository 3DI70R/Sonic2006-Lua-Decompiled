g_mission_information = {
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/flc/a",
  mission_event_start = "e0110",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
