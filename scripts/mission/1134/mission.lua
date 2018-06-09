g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/shadow/b",
  mission_terrain = "stage/twn/b",
  mission_set_default = "scripts/mission/1134/set_mission_1134_00.XML",
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
c_flag_mission_success = c_flag_start + 2
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_1134 = {
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
  finish = "result_1134_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1134_134" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
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
  if _ARG_1_ == "msg_m1134_134" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "wait", "joy")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_4"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 2 then
      SetAnimationTalkWith(_ARG_0_, "wait", "joy")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_5"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 3 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_6"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 4 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_7"
    else
      SetAnimationTalkWith(_ARG_0_, "wait", "sad")
      g_name_setuped = "msg_m1134_n134"
      g_message_setuped = _ARG_1_ .. "_01_8"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/b"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1134/set_mission_1134_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/b"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1134/set_mission_1134_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1134" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "d1134_a" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
  elseif _ARG_1_ == "d1134_b" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 3)
  elseif _ARG_1_ == "d1134_c" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 4)
  elseif _ARG_1_ == "failed" then
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "result_1134_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1134_rule034_01_1")
    StartCountdown(_ARG_0_, 120, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1134_134_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 5)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1134_134_01_4" then
    SetGlobalFlag(_ARG_0_, 1134, 1)
    Result(_ARG_0_, "g_result_1134")
  elseif _ARG_1_ == "msg_m1134_134_01_5" then
    Result(_ARG_0_, "g_result_1134")
  elseif _ARG_1_ == "msg_m1134_134_01_6" then
    Result(_ARG_0_, "g_result_1134")
  elseif _ARG_1_ == "msg_m1134_134_01_7" then
    Result(_ARG_0_, "g_result_1134")
  elseif _ARG_1_ == "msg_m1134_134_01_8" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
