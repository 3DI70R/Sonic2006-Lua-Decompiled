g_mission_information = {
  mission_string = "msg_act15",
  mission_area = "end/sonic/a",
  mission_terrain = "stage/end/a/",
  mission_set_default = "scripts/mission/0301/set_end_a_sonic.XML",
  mission_event_start = "e0300",
  mission_startup = "e0300_end",
  mission_text = "text/msg_system.mst",
  mission_is_battle = true,
  mission_area_text = "endoftheworld",
  mission_progress = 0
}
g_result_end = {
  stagename = "TOWN",
  id = 144,
  timebonus_base = 46000,
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
  finish = "result_end_end"
}
g_result_solaris = {
  stagename = "TOWN",
  id = 145,
  timebonus_base = 49000,
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
  ringbonus_c = 800,
  ringbonus_d = 500,
  finish = "result_solaris_end"
}
c_flag_start = 0
g_message_setuped = ""
g_message_icon = 0
function main(_ARG_0_)
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0300_end" then
    PlayEvent(_ARG_0_, "e0301", "e0301_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e0301_end" then
    PlayEvent(_ARG_0_, "e0302", "e0302_end")
  elseif _ARG_1_ == "e0302_end" then
    PlayMovie(_ARG_0_, "event/e0303/e0303.sfd", "e0303_end")
  elseif _ARG_1_ == "e0303_end" then
    PlayEvent(_ARG_0_, "e0304", "e0304_end")
  elseif _ARG_1_ == "e0304_end" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "end/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_a_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/flc/a/"
    g_mission_information.mission_area = "end/sonic/b"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_b_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_c" then
    g_mission_information.mission_terrain = "stage/tpj/c/"
    g_mission_information.mission_area = "end/sonic/c"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_c_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_d" then
    g_mission_information.mission_terrain = "stage/dtd/a/"
    g_mission_information.mission_area = "end/sonic/d"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_d_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_e" then
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "end/sonic/e"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_e_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_f" then
    g_mission_information.mission_terrain = "stage/wap/b/"
    g_mission_information.mission_area = "end/sonic/f"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_f_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_g" then
    g_mission_information.mission_terrain = "stage/kdv/a/"
    g_mission_information.mission_area = "end/sonic/g"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_end_g_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_end_end" then
    PlayMovie(_ARG_0_, "event/e0305/e0305.sfd", "e0305_end")
  elseif _ARG_1_ == "e0305_end" then
    PlayEvent(_ARG_0_, "e1121", "e1121_end")
  elseif _ARG_1_ == "e1121_end" then
    g_mission_information.mission_string = "msg_act25"
    g_mission_information.mission_terrain = "stage/boss/solaris_last/"
    g_mission_information.mission_area = "solaris01"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_solaris01_super3.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e1122_end" then
    g_mission_information.mission_string = "msg_act26"
    g_mission_information.mission_terrain = "stage/boss/solaris_last/"
    g_mission_information.mission_area = "solaris02"
    g_mission_information.mission_set_default = "scripts/mission/0301/set_solaris02_super3.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e1123_end" then
    g_mission_information.mission_progress = 100
    SetGlobalFlag(_ARG_0_, 4144, 1)
    SetGlobalFlag(_ARG_0_, 4148, 1)
    Result(_ARG_0_, "g_result_solaris")
  elseif _ARG_1_ == "boss_is_dead" then
    if g_mission_information.mission_area == "solaris01" then
      PlayEvent(_ARG_0_, "e1122", "e1122_end")
    else
      PlayEvent(_ARG_0_, "e1123", "e1123_end")
    end
  elseif _ARG_1_ == "result_solaris_end" then
    PlayMovie(_ARG_0_, "event/e0306/e0306.sfd", "e0306_end")
  elseif _ARG_1_ == "e0306_end" then
    PlayMovie(_ARG_0_, "event/e0307/e0307.sfd", "e0307_end")
  elseif _ARG_1_ == "e0307_end" then
    PlayMovie(_ARG_0_, "event/e0308/e0308.sfd", "e0308_end")
  elseif _ARG_1_ == "e0308_end" then
    PlayMovie(_ARG_0_, "event/e0309/e0309.sfd", "e0309_end")
  elseif _ARG_1_ == "e0309_end" then
    g_mission_information.mission_progress = 100
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "end/sonic/g" then
    g_mission_information.mission_area_text = "solaris"
    g_mission_information.mission_progress = 50
    SetGlobalFlag(_ARG_0_, 4143, 1)
    Result(_ARG_0_, "g_result_end")
  elseif g_mission_information.mission_area == "solaris_super3" then
    g_mission_information.mission_progress = 99
    SetGlobalFlag(_ARG_0_, 4144, 1)
    SetGlobalFlag(_ARG_0_, 4148, 1)
    Result(_ARG_0_, "g_result_solaris")
  end
end
