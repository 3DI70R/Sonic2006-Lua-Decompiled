g_mission_information = {
  mission_area = "secondmefiress_shadow",
  mission_terrain = "stage/boss/secondmefiress_dtd/",
  mission_event_start = "e1061",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
