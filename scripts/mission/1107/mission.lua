g_mission_information = {
  mission_string = "msg_m1107_title007_01_1",
  mission_area = "twn/shadow/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/1107/set_mission_1107_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_shadow.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_fast"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_info = c_flag_start + 2
c_flag_mission_success = c_flag_start + 3
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1107 = {
  id = 172,
  stagename = "TOWN",
  timebonus_base = 38000,
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
  finish = "result_1107_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1107_107" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_info) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 3 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 4 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1107_107" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_info) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_4"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 3 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_5"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 4 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "surprise")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_6"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_m1107_n107"
      g_message_setuped = _ARG_1_ .. "_01_7"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_mission_scene1" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_01.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene2" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_02.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene3" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_03.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene4" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_04.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene5" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_05.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/1107/set_mission_1107_00.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1107_01" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "d1107_02" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 3)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "d1107_03" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 5)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "d1107_04" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 7)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "d1107" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 4)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "VEHICLE_DEAD" then
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1107_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1107_rule007_01_1")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
    StartCountdown(_ARG_0_, 180, "VEHICLE_DEAD")
  elseif _ARG_1_ == "rule01" then
    OpenWindow(_ARG_0_, "msg_m1107_info001_01_1")
  elseif _ARG_1_ == "rule02" then
    OpenWindow(_ARG_0_, "msg_m1107_info001_01_2")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
    StartCountdown(_ARG_0_, 180, "VEHICLE_DEAD")
  elseif _ARG_1_ == "rule03" then
    OpenWindow(_ARG_0_, "msg_m1107_info001_01_3")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
    StartCountdown(_ARG_0_, 180, "VEHICLE_DEAD")
  elseif _ARG_1_ == "rule04" then
    OpenWindow(_ARG_0_, "msg_m1107_info001_01_4")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
    StartCountdown(_ARG_0_, 180, "VEHICLE_DEAD")
  elseif _ARG_1_ == "rule05" then
    OpenWindow(_ARG_0_, "msg_m1107_info001_01_5")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
    StartCountdown(_ARG_0_, 180, "VEHICLE_DEAD")
  elseif _ARG_1_ == "__miss" then
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1107_107_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_info, 1)
    on_goto(_ARG_0_, "goto_mission_scene1")
  elseif _ARG_1_ == "msg_m1107_107_01_3" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 2)
      on_goto(_ARG_0_, "goto_mission_scene2")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 4)
      on_goto(_ARG_0_, "goto_mission_scene3")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 6)
      on_goto(_ARG_0_, "goto_mission_scene4")
    end
  elseif _ARG_1_ == "msg_m1107_107_01_4" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 8)
    on_goto(_ARG_0_, "goto_mission_scene5")
  elseif _ARG_1_ == "msg_m1107_107_01_5" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "msg_m1107_107_01_6" then
    SetGlobalFlag(_ARG_0_, 1107, 1)
    Result(_ARG_0_, "g_result_1107")
  elseif _ARG_1_ == "msg_m1107_107_01_7" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
