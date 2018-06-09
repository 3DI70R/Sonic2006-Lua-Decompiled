g_mission_information = {
  mission_string = "msg_m1114_title014_01_1",
  mission_area = "twn/shadow/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1114/set_mission_1114_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_shadow.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_comical"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
c_flag_mission_active = c_flag_start + 3
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1114 = {
  id = 177,
  stagename = "TOWN",
  timebonus_base = 40000,
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
  finish = "result_1114_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1114_153" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 2 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 3 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 4 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 5 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1114_153" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_2"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 2 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "angry")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 3 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "surprise")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_4"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 4 then
      SetAnimationTalkWith(_ARG_0_, "talk_help", "sad")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_5"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 5 then
      SetAnimationTalkWith(_ARG_0_, "wait", "joy")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_6"
    else
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = "msg_m1114_n153"
      g_message_setuped = _ARG_1_ .. "_01_7"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_mission_scene1" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/1114/set_mission_1114_01.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene2" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/1114/set_mission_1114_02.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene3" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/1114/set_mission_1114_03.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/1114/set_mission_1114_00.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1114" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 5)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1114_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_active, 0)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
  elseif _ARG_1_ == "d1114_2" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_active, 0)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 2)
  elseif _ARG_1_ == "FAILD_FLAG" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 6)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "result_1114_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule01" then
    OpenWindow(_ARG_0_, "msg_m1114_rule014_01_1")
    StartCountdown(_ARG_0_, 300, "FAILD_FLAG")
  elseif _ARG_1_ == "rule02" then
    OpenWindow(_ARG_0_, "msg_m1114_rule014_01_2")
    StartCountdown(_ARG_0_, 300, "FAILD_FLAG")
  elseif _ARG_1_ == "rule03" then
    OpenWindow(_ARG_0_, "msg_m1114_rule014_01_3")
  elseif _ARG_1_ == "mes01" then
    OpenWindow(_ARG_0_, "msg_m1114_153_01_4")
  elseif _ARG_1_ == "mes02" then
    OpenWindow(_ARG_0_, "msg_m1114_153_01_5")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 6)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1114_153_01_2" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_active) == 0 then
      StartCountdown(_ARG_0_, 0, "")
    end
  elseif _ARG_1_ == "msg_m1114_153_01_3" then
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1114_153_01_1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_active) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_active, 1)
      on_goto(_ARG_0_, "goto_mission_scene1")
    end
  elseif _ARG_1_ == "msg_m1114_153_01_2" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_active) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_active, 1)
      on_goto(_ARG_0_, "goto_mission_scene2")
    end
  elseif _ARG_1_ == "msg_m1114_153_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 3)
    on_goto(_ARG_0_, "goto_mission_scene3")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "msg_m1114_153_01_4" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 4)
  elseif _ARG_1_ == "msg_m1114_153_01_6" then
    SetGlobalFlag(_ARG_0_, 1114, 1)
    Result(_ARG_0_, "g_result_1114")
  elseif _ARG_1_ == "msg_m1114_153_01_7" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
