g_mission_information = {
  mission_string = "msg_m1131_title031_01_1",
  mission_area = "twn/shadow/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1131/set_mission_1131_01.XML",
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
g_talk_reuse = 0
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_shortmission = true
g_result_1131 = {
  id = 180,
  stagename = "TOWN",
  timebonus_base = 27500,
  timebonus_rate = 100,
  ringbonus_rate = 100,
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
  finish = "result_1131_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1131_131" then
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
  if _ARG_1_ == "msg_m1131_131" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_2"
    else
      SetAnimationTalkWith(_ARG_0_, "damage_furafura", "sad")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_3"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/a" then
    if _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1131/set_mission_1131_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1131/set_mission_1131_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "d1131" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "FAILD_FLAG" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1131_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1131_rule031_01_1")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
  elseif _ARG_1_ == "__miss" then
    MissionClear(_ARG_0_, "failed")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "msg_m1131_131_01_2" then
    SetGlobalFlag(_ARG_0_, 1131, 1)
    Result(_ARG_0_, "g_result_1131")
  end
end
function on_goal(_ARG_0_)
end
