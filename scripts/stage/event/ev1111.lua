g_mission_information = {
  mission_area = "eWyvern_sonic",
  mission_terrain = "stage/boss/dr3_eggcarrier/",
  mission_event_start = "e1111",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
