g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/silver/c",
  mission_terrain = "stage/twn/c/",
  mission_set_default = "scripts/mission/1205/set_mission_1205_00.XML",
  mission_is_battle = false,
  mission_text = "text/msg_town_mission_silver.mst",
  mission_event_start = "",
  mission_event_end = "",
  mission_disappear_people = true,
  mission_bgm = "twn_mission_slow"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
c_flag_num_pucchi = c_flag_start + 3
c_flag_num_john = c_flag_start + 4
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_1205 = {
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
  finish = "result_1205_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1205_205" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      g_message_icon = 3
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = 3
    else
      g_message_icon = 3
    end
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1205_205" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_m1205_n205"
      g_message_setuped = _ARG_1_ .. "_01_3"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_m1205_n205"
      g_message_setuped = _ARG_1_ .. "_01_4"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_m1205_n205"
      g_message_setuped = _ARG_1_ .. "_01_5"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/c" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/silver/c"
      g_mission_information.mission_set_default = "scripts/mission/1205/set_mission_1205_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/silver/c"
      g_mission_information.mission_set_default = "scripts/mission/1205/set_mission_1205_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "failed" then
    StartCountdown(_ARG_0_, 0, "")
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1205_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1205_rule005_01_1")
    StartCountdown(_ARG_0_, 300, "failed")
  elseif _ARG_1_ == "add_pucchi" then
    SetTemporaryFlag(_ARG_0_, c_flag_num_pucchi, GetTemporaryFlag(_ARG_0_, c_flag_num_pucchi) + 1)
  elseif _ARG_1_ == "add_john" then
    SetTemporaryFlag(_ARG_0_, c_flag_num_john, GetTemporaryFlag(_ARG_0_, c_flag_num_john) + 1)
  elseif _ARG_1_ == "sub_pucchi" then
    SetTemporaryFlag(_ARG_0_, c_flag_num_pucchi, GetTemporaryFlag(_ARG_0_, c_flag_num_pucchi) - 1)
  elseif _ARG_1_ == "sub_john" then
    SetTemporaryFlag(_ARG_0_, c_flag_num_john, GetTemporaryFlag(_ARG_0_, c_flag_num_john) - 1)
  end
  if GetTemporaryFlag(_ARG_0_, c_flag_num_pucchi) >= 1 and 1 <= GetTemporaryFlag(_ARG_0_, c_flag_num_john) then
    printf("c_flag_mission_success 2")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 2)
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1205_205_01_3" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
      on_goto(_ARG_0_, "goto_mission_scene")
    end
  elseif _ARG_1_ == "msg_m1205_205_01_4" then
    StartCountdown(_ARG_0_, 300, "failed")
  elseif _ARG_1_ == "msg_m1205_205_01_5" then
    SetGlobalFlag(_ARG_0_, 1201, 1)
    Result(_ARG_0_, "g_result_1205")
  end
end
function on_goal(_ARG_0_)
end
