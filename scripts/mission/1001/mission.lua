g_mission_information = {
  mission_string = "msg_m1001_title001_01_1",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1001/set_mission_1001_00.XML",
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
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1001 = {
  id = 146,
  stagename = "TOWN",
  timebonus_base = 40000,
  timebonus_rate = 500,
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
  finish = "result_1001_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1001_n001"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_m1001_n001"
      g_message_setuped = _ARG_1_ .. "_01_4"
    else
      SetAnimationTalkWith(_ARG_0_, "sigh", "sad")
      g_name_setuped = "msg_m1001_n001"
      g_message_setuped = _ARG_1_ .. "_01_5"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1001/set_mission_1001_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/1001/set_mission_1001_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1001" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    printf("d1001")
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    printf("failed")
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1001_end" then
    MissionClear(_ARG_0_, "complete")
    printf("result_1001_end")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1001_rule001_01_1")
    printf("rule")
    StartCountdown(_ARG_0_, 120, "failed")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1001_001_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    printf("msg_m1001_001_01_3")
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1001_001_01_4" then
    SetGlobalFlag(_ARG_0_, 1001, 1)
    printf("msg_m1001_001_01_4")
    Result(_ARG_0_, "g_result_1001")
  elseif _ARG_1_ == "msg_m1001_001_01_5" then
    MissionClear(_ARG_0_, "failed")
    printf("msg_m1001_001_01_5")
  end
end
function on_goal(_ARG_0_)
end
