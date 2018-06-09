g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1006/set_mission_1006_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_sonic.mst",
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
g_result_1006 = {
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
  finish = "result_1006_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1006_006" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 2
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1006_056" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1006_006" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "3")
      g_message_setuped = _ARG_1_ .. "_01_3"
      g_name_setuped = "msg_m1006_n006"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "3")
      g_message_setuped = _ARG_1_ .. "_01_4"
      g_name_setuped = "msg_m1006_n006"
    end
  elseif _ARG_1_ == "msg_m1006_056" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    SetAnimationTalkWith(_ARG_0_, "talk_joy", "1")
    g_message_setuped = _ARG_1_ .. "_01_1"
    g_name_setuped = "msg_m1006_n056"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_mission_scene" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1006/set_mission_1006_01.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1006/set_mission_1006_00.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
  if _ARG_1_ == "goto_mission_end_2" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/1006/set_mission_1006_02.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1006" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end2")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1006_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1006_rule006_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1006_006_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1006_056_01_1" then
    Result(_ARG_0_, "g_result_1006")
  elseif _ARG_1_ == "msg_m1006_006_01_4" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
