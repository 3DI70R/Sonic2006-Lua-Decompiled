g_mission_information = {
  mission_string = "msg_act15",
  mission_area = "end/sonic/a",
  mission_terrain = "stage/csc/f/",
  mission_set_default = "scripts/mission/0301/set_end_a_sonic.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_system.mst",
  mission_is_battle = true
}
g_result_end = {
  id = 144,
  stagename = "TOWN",
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
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "goto_b" then
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
    MissionClear(_ARG_0_, "complete")
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
  if g_mission_information.mission_area == "end/sonic/g" then
    Result(_ARG_0_, "g_result_end")
  end
end
