g_mission_information = {
  mission_string = "msg_m1014_title014_01_1",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1014/set_mission_1014_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_sonic.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_slow"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
c_flag_mission_failed = c_flag_start + 3
c_flag_mission_act = c_flag_start + 4
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
g_result_1014 = {
  id = 160,
  stagename = "TOWN",
  timebonus_base = 35000,
  timebonus_rate = 50,
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
  finish = "result_1014_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1014_014" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 3 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 5 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 7 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 9 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 3 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 4 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_failed) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1014_014" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_02"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_03"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 3 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_04"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 5 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_05"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 7 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_06"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 9 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_07"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "clap_l", "joy")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_08"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "angry")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_09"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 3 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "surprise")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_10"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 4 then
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_11"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_failed) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_12"
    else
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = "msg_m1014_n014"
      g_message_setuped = _ARG_1_ .. "_01_13"
      g_talk_reuse = 1
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_mission_scene_q1" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_q1.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_q2" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_q2.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_q3" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_q3.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_q4" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_q4.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_q5" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_q5.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_a1" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_a1.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_a2" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_a2.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_a3" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_a3.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_a4" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_a4.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_scene_a5" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_a5.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1014/set_mission_1014_00.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1014" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 4)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1014_a1" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1014_a2" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1014_a3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1014_a4" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_failed, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "result_1014_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "select_yes" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 0)
      on_goto(_ARG_0_, "goto_mission_scene_a1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 0)
      on_goto(_ARG_0_, "goto_mission_scene_a2")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 6 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 0)
      on_goto(_ARG_0_, "goto_mission_scene_a3")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 8 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 0)
      on_goto(_ARG_0_, "goto_mission_scene_a4")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 10 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 0)
      on_goto(_ARG_0_, "goto_mission_scene_a5")
    end
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1014_rule014_01_1")
  elseif _ARG_1_ == "select_no" then
    OpenWindow(_ARG_0_, "msg_m1011_057_01_7")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_failed, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1014_014_01_02" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene_q1")
  elseif _ARG_1_ == "msg_m1014_014_01_03" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 2)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 1)
  elseif _ARG_1_ == "msg_m1014_014_01_04" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 4)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 1)
  elseif _ARG_1_ == "msg_m1014_014_01_05" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 6)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 1)
  elseif _ARG_1_ == "msg_m1014_014_01_06" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 8)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 1)
  elseif _ARG_1_ == "msg_m1014_014_01_07" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 10)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_act, 1)
  elseif _ARG_1_ == "msg_m1014_014_01_08" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 3)
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
      on_goto(_ARG_0_, "goto_mission_scene_q2")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 5)
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
      on_goto(_ARG_0_, "goto_mission_scene_q3")
    end
  elseif _ARG_1_ == "msg_m1014_014_01_09" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 7)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
    on_goto(_ARG_0_, "goto_mission_scene_q4")
  elseif _ARG_1_ == "msg_m1014_014_01_10" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 9)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
    on_goto(_ARG_0_, "goto_mission_scene_q5")
  elseif _ARG_1_ == "msg_m1014_014_01_11" then
    SetGlobalFlag(_ARG_0_, 1014, 1)
    Result(_ARG_0_, "g_result_1014")
  elseif _ARG_1_ == "msg_m1014_014_01_12" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "msg_m1014_014_01_13" and GetTemporaryFlag(_ARG_0_, c_flag_mission_act) == 1 then
    OpenSelect(_ARG_0_, "g_select")
  end
end
function on_goal(_ARG_0_)
end
