g_mission_information = {
  mission_string = "msg_m1220_title020_01_1",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1220/set_mission_1220.XML",
  mission_event_start = "e0214",
  mission_startup = "e0214_end",
  mission_text = "text/msg_town_mission_silver.mst",
  mission_is_battle = true,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 57,
  mission_disappear_people = true,
  mission_bgm = "twn_mission_fast"
}
g_result_1220 = {
  id = 192,
  stagename = "TOWN",
  timebonus_base = 34000,
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
  finish = "result_1220_end"
}
c_flag_start = 0
c_flag_e0215_end = c_flag_start + 0
g_message_setuped = ""
g_message_icon = 0
function main(_ARG_0_)
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0214_end" then
    PlayEvent(_ARG_0_, "e0215", "e0215_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e0215_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_e0215_end, 1)
  elseif _ARG_1_ == "e0216_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0210/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "1220_complete" then
  elseif _ARG_1_ == "d1220" then
    SetGlobalFlag(_ARG_0_, 1220, 1)
    Result(_ARG_0_, "g_result_1220")
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1220_rule020_01_1")
  elseif _ARG_1_ == "result_1220_end" then
    PlayEvent(_ARG_0_, "e0216", "e0216_end")
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
end
