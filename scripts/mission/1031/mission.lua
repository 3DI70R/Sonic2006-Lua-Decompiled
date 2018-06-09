g_mission_information = {
  mission_string = "msg_m1031_title031_01_1",
  mission_area = "twn/sonic/c",
  mission_terrain = "stage/twn/c/",
  mission_set_default = "scripts/mission/1031/set_mission_1031_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_sonic.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "stg_twn_shop"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
c_flag_choose_amy = c_flag_start + 3
c_flag_choose_elice = c_flag_start + 4
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_talk_reuse = 0
g_result_1031 = {
  id = 165,
  stagename = "TOWN",
  timebonus_base = 30000,
  timebonus_rate = 0,
  ringbonus_rate = 0,
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
  finish = "result_1031_end"
}
g_select_amy = {
  {
    name = "msg_m1000_001_01_1",
    event = "select_amy"
  },
  {
    name = "msg_m1000_002_01_1",
    event = "select_no"
  }
}
g_select_elice = {
  {
    name = "msg_m1000_001_01_1",
    event = "select_elice"
  },
  {
    name = "msg_m1000_002_01_1",
    event = "select_no"
  }
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1031_030" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_choose_amy) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1031_031" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1031_032" then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1031_030" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1031_n031"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_choose_amy) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1031_n031"
      g_message_setuped = _ARG_1_ .. "_01_2"
    else
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1031_n031"
      g_message_setuped = _ARG_1_ .. "_01_3"
    end
  elseif _ARG_1_ == "msg_m1031_031" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_m1031_n031"
    g_message_setuped = _ARG_1_ .. "_01_4"
    g_talk_reuse = 1
  elseif _ARG_1_ == "msg_m1031_032" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_m1031_n031"
    g_message_setuped = _ARG_1_ .. "_01_6"
    g_talk_reuse = 1
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/c" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "scripts/mission/1031/set_mission_1031_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "scripts/mission/1031/set_mission_1031_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1031_rule031_01_1")
  elseif _ARG_1_ == "result_1031_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "select_amy" then
    SetTemporaryFlag(_ARG_0_, c_flag_choose_amy, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "select_elice" then
    SetTemporaryFlag(_ARG_0_, c_flag_choose_elice, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "select_no" then
    OpenWindow(_ARG_0_, "msg_m1011_057_01_7")
  elseif _ARG_1_ == "__miss" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1031_030_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1031_030_01_2" then
    SetGlobalFlag(_ARG_0_, 1031, 1)
    Result(_ARG_0_, "g_result_1031")
  elseif _ARG_1_ == "msg_m1031_030_01_3" then
    SetGlobalFlag(_ARG_0_, 1031, 1)
    Result(_ARG_0_, "g_result_1031")
  elseif _ARG_1_ == "msg_m1031_031_01_4" then
    OpenSelect(_ARG_0_, "g_select_amy")
  elseif _ARG_1_ == "msg_m1031_032_01_6" then
    OpenSelect(_ARG_0_, "g_select_elice")
  end
end
function on_goal(_ARG_0_)
end
