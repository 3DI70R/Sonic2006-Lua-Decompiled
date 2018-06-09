g_mission_information = {
  mission_string = "msg_m1030_title030_01_1",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1120/set_mission_1120_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_shadow.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_comical"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_01 = c_flag_start + 1
c_flag_02 = c_flag_start + 2
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_1120 = {
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
  finish = "result_1120_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1120_120_" then
    if GetTemporaryFlag(_ARG_0_, c_flag_02) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 1 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 2 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 3 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 4 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 5 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 6 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 7 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 8 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 9 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 10 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 11 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 12 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 13 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 14 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 15 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1120_120_" then
    if GetTemporaryFlag(_ARG_0_, c_flag_02) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_03"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_04"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 2 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_05"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 3 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_06"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 4 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_07"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 5 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_08"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 6 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_09"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 7 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_10"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 8 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_11"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 9 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_12"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 10 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_13"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 11 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_14"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 12 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_15"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 13 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_16"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 14 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_17"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_02) == 15 then
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_18"
    else
      SetAnimationTalkWith(_ARG_0_, "wait_arm", "joy")
      g_name_setuped = ""
      g_message_setuped = _ARG_1_ .. "01_19"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1120/set_mission_1120_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1120/set_mission_1120_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1031_rule030_01_1")
  elseif _ARG_1_ == "result_1120_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "choose1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_01) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 2)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 3)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 4)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 8)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 6)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 13)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "choose2" then
    if GetTemporaryFlag(_ARG_0_, c_flag_01) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 2)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 4)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 4)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 9)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 6)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 14)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "choose3" then
    if GetTemporaryFlag(_ARG_0_, c_flag_01) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 2)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 5)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 4)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 10)
      on_goto(_ARG_0_, "goto_mission_end")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_01) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_01, 6)
      SetTemporaryFlag(_ARG_0_, c_flag_02, 15)
      on_goto(_ARG_0_, "goto_mission_end")
    end
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1120_120_01_03" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_04" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 2)
  elseif _ARG_1_ == "msg_m1120_120_01_05" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 1)
  elseif _ARG_1_ == "msg_m1120_120_01_06" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 3)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 6)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_07" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 3)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 6)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_08" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 3)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 6)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_09" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 7)
  elseif _ARG_1_ == "msg_m1120_120_01_10" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 6)
  elseif _ARG_1_ == "msg_m1120_120_01_11" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 5)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 11)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_12" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 5)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 11)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_13" then
    SetTemporaryFlag(_ARG_0_, c_flag_01, 5)
    SetTemporaryFlag(_ARG_0_, c_flag_02, 11)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1120_120_01_14" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 12)
  elseif _ARG_1_ == "msg_m1120_120_01_15" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 11)
  elseif _ARG_1_ == "msg_m1120_120_01_16" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 16)
  elseif _ARG_1_ == "msg_m1120_120_01_17" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 16)
  elseif _ARG_1_ == "msg_m1120_120_01_18" then
    SetTemporaryFlag(_ARG_0_, c_flag_02, 16)
  elseif _ARG_1_ == "msg_m1120_120_01_19" then
    SetGlobalFlag(_ARG_0_, 1120, 1)
    Result(_ARG_0_, "g_result_1120")
  end
end
function on_goal(_ARG_0_)
end
