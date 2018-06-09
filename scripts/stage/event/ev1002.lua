g_mission_information = {
  mission_area = "iblis01",
  mission_terrain = "stage/csc/iblis01/",
  mission_event_start = "e1002",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
