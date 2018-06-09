g_mission_information = {
  mission_string = "silver_stg_csc",
  mission_area = "csc/silver/f1",
  mission_terrain = "stage/csc/f/",
  mission_set_default = "scripts/mission/2200/set_cscF1_silver_h.XML",
  mission_is_battle = true,
  mission_path_default = "scripts/mission/0201/path_cscF1_silver",
  mission_text = "text/msg_twn_silver.mst",
  mission_event_start = "",
  mission_event_end = ""
}
g_message_setuped = ""
c_flag_start = 0
c_flag_mission_start = c_flag_start + 1
g_message_icon = 0
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 2
c_icon_mission_cleared = 3
c_icon_goal = 4
g_result_csc = {
  id = 99,
  stagename = "TOWN",
  timebonus_base = 59000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 800,
  ringbonus_d = 500,
  finish = "result_csc_end"
}
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_goto(_ARG_0_, _ARG_1_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "BtoF2" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "csc/silver/f2"
    g_mission_information.mission_set_default = "scripts/mission/2200/set_cscF2_silver_h.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscF_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "F1toB" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/2200/set_cscB_silver_h.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscB_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_csc_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  SetGlobalFlag(_ARG_0_, 4098, 1)
  Result(_ARG_0_, "g_result_csc")
end
