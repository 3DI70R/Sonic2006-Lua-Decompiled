g_mission_information = {
  mission_string = "msg_m1025_title025_01_1",
  mission_area = "twn/sonic/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/1025/set_mission_1025.XML",
  mission_is_battle = true,
  mission_text = "text/msg_town_mission_sonic.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_fast"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1025 = {
  id = 156,
  stagename = "TOWN",
  timebonus_base = 30000,
  timebonus_rate = 100,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 22500,
  rank_d = 0,
  ringbonus_s = 2000,
  ringbonus_a = 1000,
  ringbonus_b = 800,
  ringbonus_c = 500,
  ringbonus_d = 300,
  finish = "result_1025_end"
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
  if _ARG_1_ == "d1025" then
    StartCountdown(_ARG_0_, 0, "1")
    SetGlobalFlag(_ARG_0_, 1025, 1)
    Result(_ARG_0_, "g_result_1025")
  elseif _ARG_1_ == "failed" then
    StartCountdown(_ARG_0_, 0, "")
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1025_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1025_rule025_01_1")
    StartCountdown(_ARG_0_, 240, "failed")
  elseif _ARG_1_ == "__miss" then
    StartCountdown(_ARG_0_, 0, "")
    MissionClear(_ARG_0_, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
end
