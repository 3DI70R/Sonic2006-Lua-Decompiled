g_mission_information = {
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/event/ev0003",
  mission_event_start = "e0003",
  mission_startup = "_event_end"
}
c_flag_play_event = 0
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
