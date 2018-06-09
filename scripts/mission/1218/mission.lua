g_mission_information = {
  mission_string = "msg_m1218_title018_01_1",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1218/set_mission_1218_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_silver.mst",
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
g_result_1218 = {
  id = 187,
  stagename = "TOWN",
  timebonus_base = 45000,
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
  finish = "result_1218_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1218_218" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  elseif _ARG_1_ == "msg_m1218_251" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1218_252" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1218_253" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1218_254" then
    g_message_icon = 3
  elseif _ARG_1_ == "msg_m1218_255" then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1218_218" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1218_n218"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "surprise")
      g_name_setuped = "msg_m1218_n218"
      g_message_setuped = _ARG_1_ .. "_01_4"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_m1218_n218"
      g_message_setuped = _ARG_1_ .. "_01_5"
    end
  elseif _ARG_1_ == "msg_m1218_251" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "sad")
    g_name_setuped = "msg_m1218_n251"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1218_252" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "angry")
    g_name_setuped = ""
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1218_253" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "sad")
    g_name_setuped = ""
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1218_254" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "angry")
    g_name_setuped = ""
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_m1218_255" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "sad")
    g_name_setuped = ""
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/silver/a"
      g_mission_information.mission_set_default = "scripts/mission/1218/set_mission_1218_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/silver/a"
      g_mission_information.mission_set_default = "scripts/mission/1218/set_mission_1218_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "CLEAR_FLAG" then
    if GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 1)
      OpenWindow(_ARG_0_, "msg_m1218_251_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 2)
      OpenWindow(_ARG_0_, "msg_m1218_252_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 3)
      OpenWindow(_ARG_0_, "msg_m1218_253_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 4)
      OpenWindow(_ARG_0_, "msg_m1218_254_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_count_children, 5)
      OpenWindow(_ARG_0_, "msg_m1218_255_01_1")
    elseif GetTemporaryFlag(_ARG_0_, c_flag_count_children) == 5 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
      on_goto(_ARG_0_, "goto_mission_end")
      StartCountdown(_ARG_0_, 0, "")
    end
  elseif _ARG_1_ == "failed" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1218_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1218_rule018_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  elseif _ARG_1_ == "__miss" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
    on_goto(_ARG_0_, "goto_mission_end")
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1218_218_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1218_218_01_4" then
    SetGlobalFlag(_ARG_0_, 1218, 1)
    Result(_ARG_0_, "g_result_1218")
  elseif _ARG_1_ == "msg_m1218_218_01_5" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_goal(_ARG_0_)
end
