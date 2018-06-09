g_mission_information = {
  mission_area = "eGenesis_silver",
  mission_terrain = "stage/boss/dr1_wap/",
  mission_event_start = "e1101",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
