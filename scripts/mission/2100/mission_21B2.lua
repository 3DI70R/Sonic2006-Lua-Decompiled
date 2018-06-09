g_mission_information = {
  mission_string = "shadow_stg_wvo",
  mission_area = "wvo/shadow/b",
  mission_terrain = "stage/wvo/b/",
  mission_set_default = "scripts/mission/2100/set_wvoB_shadow_h.XML",
  mission_is_battle = true,
  mission_text = "text/msg_twn_shadow.mst",
  mission_event_start = "",
  mission_event_end = ""
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_wvo = {
  id = 83,
  stagename = "TOWN",
  timebonus_base = 29000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_wvo_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_goto(_ARG_0_, _ARG_1_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_a" then
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "wvo/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/2100/set_wvoA_shadow_h.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_wvo_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  SetGlobalFlag(_ARG_0_, 4082, 1)
  Result(_ARG_0_, "g_result_wvo")
end
