g_mission_information = {
  mission_area = "test_player/sonic",
  mission_terrain = "stage/other/test002/",
  mission_movie_start = "event/e0308/e0308.sfd",
  mission_startup = "_event_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  MissionClear(_ARG_0_, "complete")
end
