g_mission_information = {
  mission_string = "shadow_stg_wap",
  mission_area = "wap/shadow/a",
  mission_terrain = "stage/wap/a/",
  mission_set_default = "scripts/mission/0101/set_wap_a_shadow.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = true
}
g_result_wap = {
  id = 52,
  stagename = "TOWN",
  timebonus_base = 30000,
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
  finish = "result_wap_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/wap/b/"
    g_mission_information.mission_area = "wap/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_wap_b_shadow.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "wap_all_destroy" then
    Result(_ARG_0_, "g_result_wap")
  elseif _ARG_1_ == "result_wap_end" then
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
  Result(_ARG_0_, "g_result_wap")
end
