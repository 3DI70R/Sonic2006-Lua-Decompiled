g_mission_information = {
  mission_string = "msg_m1130_title030_01_1",
  mission_area = "twn/shadow/d",
  mission_terrain = "stage/twn/circuit/",
  mission_set_default = "scripts/mission/1130/set_mission_1130_01.XML",
  mission_is_battle = true,
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
c_flag_mission_breakcar = c_flag_start + 3
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1130 = {
  id = 168,
  stagename = "TOWN",
  timebonus_base = 51000,
  timebonus_rate = 300,
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
  finish = "result_1130_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1130_130" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    g_message_icon = 3
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1130_130" and GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
    SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
    g_name_setuped = "msg_m1130_n130"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/d" then
    if _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1130/set_mission_1130_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/1130/set_mission_1130_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "CLEAR_FLAG" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar, 1)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar, 2)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar) == 2 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar, 3)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar) == 3 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar, 4)
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_breakcar) == 4 then
      SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
      StartCountdown(_ARG_0_, 0, "")
      on_goto(_ARG_0_, "goto_mission_end")
    end
  elseif _ARG_1_ == "VEHICLE_DEAD" then
    MissionClear(_ARG_0_, "failed")
    StartCountdown(_ARG_0_, 0, "")
  elseif _ARG_1_ == "result_1130_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1130_rule030_01_1")
    StartCountdown(_ARG_0_, 300, "VEHICLE_DEAD")
  elseif _ARG_1_ == "__miss" then
    MissionClear(_ARG_0_, "failed")
    StartCountdown(_ARG_0_, 0, "")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1130_130_01_1" then
    SetGlobalFlag(_ARG_0_, 1130, 1)
    Result(_ARG_0_, "g_result_1130")
  end
end
function on_goal(_ARG_0_)
end
