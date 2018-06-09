g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1301/set_mission_1301.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_is_battle = true
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
  if GetTemporaryFlag(_ARG_0_, 0) == 0 then
    SetTemporaryFlag(_ARG_0_, 0, 1)
    OpenMedal(_ARG_0_, 4)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "bm0001" then
    Result(_ARG_0_, "g_result")
  elseif _ARG_1_ == "result_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
end
