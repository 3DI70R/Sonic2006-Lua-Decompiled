g_mission_information = {
  mission_string = "silver_stg_tpj",
  mission_area = "tpj/silver/c",
  mission_terrain = "stage/tpj/c/",
  mission_set_default = "scripts/mission/0201/set_tpjC_silver.XML",
  mission_path_default = "scripts/mission/0201/path_tpjC_silver",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = true
}
g_result_tpj = {
  id = 103,
  stagename = "TOWN",
  timebonus_base = 46000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 800,
  ringbonus_d = 500,
  finish = "result_tpj_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_tpj_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result_tpj")
end
