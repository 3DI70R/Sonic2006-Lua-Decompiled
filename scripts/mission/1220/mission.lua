g_mission_information = {
  mission_string = "msg_m1220_title020_01_1",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1220/set_mission_1220.XML",
  mission_is_battle = true,
  mission_text = "text/msg_town_mission_silver.mst",
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
g_result_1220 = {
  id = 192,
  stagename = "TOWN",
  timebonus_base = 34000,
  timebonus_rate = 100,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 22500,
  rank_d = 0,
  ringbonus_s = 1000,
  ringbonus_a = 500,
  ringbonus_b = 300,
  ringbonus_c = 200,
  ringbonus_d = 100,
  finish = "result_1220_end"
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
  if _ARG_1_ == "d1220" then
    StartCountdown(_ARG_0_, 0, "")
    SetGlobalFlag(_ARG_0_, 1220, 1)
    Result(_ARG_0_, "g_result_1220")
  elseif _ARG_1_ == "failed" then
    StartCountdown(_ARG_0_, 0, "")
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1220_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1220_rule020_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
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
