g_mission_information = {
  mission_area = "solaris_super3",
  mission_terrain = "stage/boss/solaris_last/",
  mission_event_start = "e1132",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
