g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/silver/c",
  mission_terrain = "stage/twn/c/",
  mission_set_default = "scripts/mission/1228/set_mission_1228_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_silver.mst",
  mission_event_start = "",
  mission_event_end = ""
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_1228 = {
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
  finish = "result_1228_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1228_228" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 2
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1228_228" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_message_setuped = _ARG_1_ .. "_01_2"
      g_name_setuped = "msg_m1228_n228"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "4")
      g_message_setuped = _ARG_1_ .. "_01_3"
      g_name_setuped = "msg_m1228_n228"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "3")
      g_message_setuped = _ARG_1_ .. "_01_4"
      g_name_setuped = "msg_m1228_n228"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/c" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/silver/c"
      g_mission_information.mission_set_default = "scripts/mission/1228/set_mission_1228_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/silver/c"
      g_mission_information.mission_set_default = "scripts/mission/1228/set_mission_1228_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1228" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1228_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1228_rule028_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1228_228_01_2" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1228_228_01_3" then
    Result(_ARG_0_, "g_result_1228")
  elseif _ARG_1_ == "msg_m1228_228_01_4" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
