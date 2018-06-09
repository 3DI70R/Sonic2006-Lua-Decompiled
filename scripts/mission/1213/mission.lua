g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/silver/b",
  mission_terrain = "stage/twn/b",
  mission_set_default = "scripts/mission/1213/set_mission_1213_00.XML",
  mission_is_battle = "TURE",
  mission_text = "text/msg_town_mission_silver.mst",
  mission_event_start = "",
  mission_event_end = ""
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
c_flag_mission_success = c_flag_start + 2
g_result_1213 = {
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
  finish = "result_1213_end"
}
function main(_ARG_0_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1213_213" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_message_setuped = _ARG_1_ .. "_01_3"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_message_setuped = _ARG_1_ .. "_01_4"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/b" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/b"
      g_mission_information.mission_area = "twn/silver/b"
      g_mission_information.mission_set_default = "scripts/mission/1213/set_mission_1213_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/b"
      g_mission_information.mission_area = "twn/silver/b"
      g_mission_information.mission_set_default = "scripts/mission/1213/set_mission_1213_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1213" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "failed" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1213_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1213_rule013_01_1")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1213_213_01_3" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
    on_goto(_ARG_0_, "goto_mission_scene")
  elseif _ARG_1_ == "msg_m1213_213_01_4" then
    Result(_ARG_0_, "g_result_1213")
  end
end
function on_goal(_ARG_0_)
end
