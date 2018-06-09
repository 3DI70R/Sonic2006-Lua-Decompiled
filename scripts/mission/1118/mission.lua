g_mission_information = {
  mission_string = "msg_m1118_title018_01_1",
  mission_area = "twn/sonic/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/1118/set_mission_1118_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_shadow.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_slow"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_fail = c_flag_start + 2
c_flag_mission_success = c_flag_start + 3
c_flag_mission_Clear_Q01 = c_flag_start + 4
c_flag_mission_Clear_Q02 = c_flag_start + 5
c_flag_mission_Clear_Q03 = c_flag_start + 6
c_flag_mission_Clear_Q04 = c_flag_start + 7
c_flag_mission_Clear_Q05 = c_flag_start + 8
c_flag_Q1_sequence = c_flag_start + 9
c_flag_Q2_sequence = c_flag_start + 10
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1118 = {
  id = 167,
  stagename = "TOWN",
  timebonus_base = 36000,
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
  finish = "result_1118_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1118_118_" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_fail) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q01) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q02) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q03) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q04) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q05) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1118_118_" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_fail) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_11"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_03"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q01) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_04"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q02) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_05"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q03) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_06"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q04) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_07"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q05) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_08"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_09"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "surprise")
      g_name_setuped = "msg_m1118_n118"
      g_message_setuped = _ARG_1_ .. "01_10"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_mission_scene" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_01.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_00.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_02" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_02.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_03" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_03.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_04" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_04.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_05" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_05.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_06" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/1118/set_mission_1118_06.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1118_rule018_01_1")
  elseif _ARG_1_ == "result_1118_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "clear01" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q01, 1)
    on_goto(_ARG_0_, "goto_mission_02")
  elseif _ARG_1_ == "clear02" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q02, 1)
    on_goto(_ARG_0_, "goto_mission_03")
  elseif _ARG_1_ == "clear03" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q03, 1)
    on_goto(_ARG_0_, "goto_mission_04")
  elseif _ARG_1_ == "clear04" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q04, 1)
    on_goto(_ARG_0_, "goto_mission_05")
  elseif _ARG_1_ == "clear05" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_Clear_Q05, 1)
    on_goto(_ARG_0_, "goto_mission_06")
  elseif _ARG_1_ == "clear06" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "fail" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "Q1_3" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 1)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 6 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 7)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q1_8" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 2)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 6)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q1_4" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 3)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q1_2" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 4)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q1_6" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q1_sequence, 5)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_6" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 1)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_8" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 2)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_9" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 3)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 5)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_4" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 4)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_2" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 6)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "Q2_3" then
    if GetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence) == 6 then
      SetTemporaryFlag(_ARG_0_, c_flag_Q2_sequence, 7)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_fail, 1)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1118_118_01_03" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1118_118_01_11" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "msg_m1118_118_01_10" then
    SetGlobalFlag(_ARG_0_, 1118, 1)
    Result(_ARG_0_, "g_result_1118")
  end
end
function on_goal(_ARG_0_)
end
