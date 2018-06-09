g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "gameshow/sonic",
  mission_terrain = "stage/kdv/a/",
  mission_set_default = "placement/other/gameshow/set_kdv_a_sonic.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_is_battle = true,
  mission_text = "text/msg_twn_sonic.mst"
}
g_result = {
  stagename = "KINGDOM VALLEY",
  timebonus_base = 30000,
  timebonus_rate = 40,
  ringbonus_rate = 10,
  rank_s = 40000,
  rank_a = 30000,
  rank_b = 20000,
  rank_c = 10000,
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
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result")
end
