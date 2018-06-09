g_mission_information = {
  mission_string = "msg_m1010_title010_01_1",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1010/set_mission_1010_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_sonic.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_comical"
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
g_talk_reuse = 0
g_select = {
  {
    name = "msg_m1000_001_01_1",
    event = "select_yes"
  },
  {
    name = "msg_m1000_002_01_1",
    event = "select_no"
  }
}
g_result_1010 = {
  id = 162,
  stagename = "TOWN",
  timebonus_base = 15500,
  timebonus_rate = 50,
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
  finish = "result_1010_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1010_010" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1010_010" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1010_n010"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "surprise")
      g_name_setuped = "msg_m1010_n010"
      g_message_setuped = _ARG_1_ .. "_01_4"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_m1010_n010"
      g_message_setuped = _ARG_1_ .. "_01_5"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_m1010_n010"
      g_message_setuped = _ARG_1_ .. "_01_6"
      g_talk_reuse = 1
    else
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "surprise")
      g_name_setuped = "msg_m1010_n010"
      g_message_setuped = _ARG_1_ .. "_01_7"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1010/set_mission_1010_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1010/set_mission_1010_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1010" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "result_1010_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "countdown" then
    OpenWindow(_ARG_0_, "msg_m1010_rule010_01_1")
    StartCountdown(_ARG_0_, 480, "failed")
  elseif _ARG_1_ == "select_yes" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "select_no" then
    OpenWindow(_ARG_0_, "msg_m1011_057_01_7")
  elseif _ARG_1_ == "get_back" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 2)
    OpenWindow(_ARG_0_, "msg_m1010_010_01_7")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1010_010_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1010_010_01_4" then
    SetGlobalFlag(_ARG_0_, 1010, 1)
    Result(_ARG_0_, "g_result_1010")
  elseif _ARG_1_ == "msg_m1010_010_01_5" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "msg_m1010_010_01_6" then
    OpenSelect(_ARG_0_, "g_select")
  end
end
function on_goal(_ARG_0_)
end
