g_mission_information = {
  mission_area = "boss/silver_vs_sonic",
  mission_terrain = "stage/twn/a/",
  mission_event_start = "e1151",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
