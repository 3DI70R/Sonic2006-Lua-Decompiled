g_mission_information = {
  mission_string = "msg_act26",
  mission_area = "solaris01",
  mission_terrain = "stage/boss/solaris_last/",
  mission_set_default = "scripts/mission/0301/set_solaris01_super3.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_system.mst",
  mission_is_battle = true
}
g_result_solaris = {
  stagename = "TOWN",
  id = 145,
  timebonus_base = 30000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 500,
  ringbonus_d = 200,
  finish = "result_solaris_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_solaris_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "boss_is_dead" then
    if g_mission_information.mission_area == "solaris01" then
      PlayEvent(_ARG_0_, "e1122", "e1122_end")
    else
      PlayEvent(_ARG_0_, "e1123", "e1123_end")
    end
  elseif _ARG_1_ == "e1122_end" then
    g_mission_information.mission_string = "msg_act26"
    g_mission_information.mission_terrain = "stage/boss/solaris_last/"
    g_mission_information.mission_area = "solaris02"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_solaris02_super3.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e1123_end" then
    SetGlobalFlag(_ARG_0_, 4144, 1)
    Result(_ARG_0_, "g_result_solaris")
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result_solaris")
end
