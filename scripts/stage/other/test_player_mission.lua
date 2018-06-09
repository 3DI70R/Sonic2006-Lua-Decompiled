g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "test_player/sonic",
  mission_terrain = "stage/other/test002/",
  mission_set_default = "placement/other/test002/set_test_player_goal.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_is_battle = false,
  mission_text = "text/msg_twn_sonic.mst"
}
g_result = {
  stagename = "TOWN",
  timebonus_base = 30000,
  timebonus_rate = 40,
  ringbonus_rate = 10,
  rank_s = 30000,
  rank_a = 20000,
  rank_b = 10000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 500,
  ringbonus_d = 200,
  finish = "result_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_end" then
  elseif _ARG_1_ == "callmission" then
    SetGlobalFlag(_ARG_0_, 914, 1)
  elseif _ARG_1_ == "foo" then
    MissionText(_ARG_0_, "fail", "newrecord")
  elseif _ARG_1_ == "newrecord" then
    MissionText(_ARG_0_, "newrecord", "success")
  elseif _ARG_1_ == "success" then
    MissionText(_ARG_0_, "success", "miss")
  elseif _ARG_1_ == "miss" then
    MissionText(_ARG_0_, "miss", "finish")
  elseif _ARG_1_ == "finish" then
    MissionText(_ARG_0_, "finish", "goal")
  elseif _ARG_1_ == "goal" then
    MissionText(_ARG_0_, "goal", "timesup")
  elseif _ARG_1_ == "timesup" then
    MissionText(_ARG_0_, "timesup", "go")
  elseif _ARG_1_ == "go" then
    MissionText(_ARG_0_, "go")
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result")
end
