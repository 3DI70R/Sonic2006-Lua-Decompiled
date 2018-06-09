g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/shadow/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1106/set_mission_1106_00.XML",
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
c_flag_count_robber = c_flag_start + 3
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_1106 = {
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
  finish = "result_1106_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1106_106" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1106_151" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1106_106" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "angry")
      g_name_setuped = "msg_m1106_n106"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk_love", "joy")
      g_name_setuped = "msg_m1106_n106"
      g_message_setuped = _ARG_1_ .. "_01_2"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_m1106_n106"
      g_message_setuped = _ARG_1_ .. "_01_3"
    end
  elseif _ARG_1_ == "msg_m1106_151" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    SetAnimationTalkWith(_ARG_0_, "damage_angry", "angry")
    g_name_setuped = "msg_m1106_n151"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1106/set_mission_1106_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1106/set_mission_1106_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "CLEAR_FLAG" then
    if GetTemporaryFlag(_ARG_0_, c_flag_count_robber) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_robber, 1)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_robber) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_robber, 2)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_robber) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_robber, 3)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_robber) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_robber, 4)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_robber) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
      StartCountdown(_ARG_0_, 8, "go_next")
      OpenWindow(_ARG_0_, "msg_m1106_151_01_1")
    end
  elseif _ARG_1_ == "go_next" then
    StartCountdown(_ARG_0_, 0, "")
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1106_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1106_rule006_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1106_106_01_1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
      on_goto(_ARG_0_, "goto_mission_scene")
    end
  elseif _ARG_1_ == "msg_m1106_106_01_2" then
    SetGlobalFlag(_ARG_0_, 1106, 1)
    Result(_ARG_0_, "g_result_1106")
  elseif _ARG_1_ == "msg_m1106_106_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  end
end
function on_goal(_ARG_0_)
end
