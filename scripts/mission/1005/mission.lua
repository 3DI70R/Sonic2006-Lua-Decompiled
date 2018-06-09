g_mission_information = {
  mission_string = "msg_m1005_title005_01_1",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1005/set_mission_1005_00.XML",
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
c_flag_count_children = c_flag_start + 3
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1005 = {
  id = 149,
  stagename = "TOWN",
  timebonus_base = 40500,
  timebonus_rate = 100,
  ringbonus_rate = 0,
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
  finish = "result_1005_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1005_005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1005_051" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1005_052" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1005_053" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1005_054" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1005_055" then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1005_005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
      g_name_setuped = "msg_m1005_n005"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "joy")
      g_name_setuped = "msg_m1005_n005"
      g_message_setuped = _ARG_1_ .. "_01_4"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "angry")
      g_name_setuped = "msg_m1005_n005"
      g_message_setuped = _ARG_1_ .. "_01_5"
    end
  elseif _ARG_1_ == "msg_m1005_051" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_m1005_n051"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1005_052" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_m1005_n052"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1005_053" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_m1005_n053"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1005_054" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_m1005_n054"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1005_055" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_m1005_n055"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1005/set_mission_1005_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1005/set_mission_1005_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "CLEAR_FLAG" then
    if GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 1)
      OpenWindow(_ARG_0_, "msg_m1005_051_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 2)
      OpenWindow(_ARG_0_, "msg_m1005_052_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 3)
      OpenWindow(_ARG_0_, "msg_m1005_053_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 4)
      OpenWindow(_ARG_0_, "msg_m1005_054_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 5)
      OpenWindow(_ARG_0_, "msg_m1005_055_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
      StartCountdown(_ARG_0_, 0, "")
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "result_1005_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1005_rule005_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1005_005_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1005_005_01_4" then
    SetGlobalFlag(_ARG_0_, 1005, 1)
    Result(_ARG_0_, "g_result_1005")
  elseif _ARG_1_ == "msg_m1005_005_01_5" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
