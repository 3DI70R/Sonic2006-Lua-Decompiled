g_mission_information = {
  mission_string = "shadow_stg_tpj_rouge",
  mission_area = "twn/shadow/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/0101/set_mission_0101b.XML",
  mission_event_start = "e0113",
  mission_startup = "e0113_end",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = false,
  mission_area_text = "tropicaljungle",
  mission_progress = 41
}
g_result_tpj = {
  stagename = "TOWN",
  id = 92,
  timebonus_base = 52000,
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
  finish = "result_tpj_end"
}
g_result_mefiress = {
  stagename = "TOWN",
  id = 95,
  timebonus_base = 35500,
  timebonus_rate = 80,
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
  finish = "result_mefiress_end"
}
g_message_setuped = ""
g_message_icon = 0
c_flag_start = 0
c_flag_1303 = c_flag_start + 0
c_flag_1304 = c_flag_start + 1
script.reload("scripts/mission/0103/mission_talk.lua")
function main(_ARG_0_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    g_mission_information.mission_terrain = "stage/twn/c/"
    g_mission_information.mission_area = "twn/shadow/c"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_mission_0102c.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    SetTemporaryFlag(_ARG_0_, c_flag_1304, 1)
  elseif g_mission_information.mission_area == "twn/shadow/c" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_mission_0102b.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0113_end" then
    g_mission_information.mission_terrain = "stage/tpj/c/"
    g_mission_information.mission_area = "tpj/shadow/c"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_tpjC_rouge.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "goto_tpj" then
    g_mission_information.mission_terrain = "stage/tpj/c/"
    g_mission_information.mission_area = "tpj/shadow/c"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_tpjC_rouge.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0114_end" then
    PlayEvent(_ARG_0_, "e0115", "e0115_end")
  elseif _ARG_1_ == "e0115_end" then
    PlayEvent(_ARG_0_, "e1041", "e1041_end")
  elseif _ARG_1_ == "e1041_end" then
    g_mission_information.mission_string = "msg_act18"
    g_mission_information.mission_terrain = "stage/boss/firstmefiress_flc/"
    g_mission_information.mission_area = "firstmefiress_shadow"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_firstmefiress_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "mephiles"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0116_end" then
    g_mission_information.mission_string = "msg_act18"
    g_mission_information.mission_terrain = "stage/boss/firstmefiress_flc/"
    g_mission_information.mission_area = "firstmefiress_omega"
    g_mission_information.mission_set_default = "scripts/mission/0103/set_firstmefiress_omega.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e1052_end" then
    g_mission_information.mission_progress = 55
    SetGlobalFlag(_ARG_0_, 4094, 1)
    Result(_ARG_0_, "g_result_mefiress")
  elseif _ARG_1_ == "e0117_end" then
    PlayEvent(_ARG_0_, "e0118", "e0118_end")
  elseif _ARG_1_ == "e0118_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0105/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "boss_is_dead" then
    if g_mission_information.mission_area == "firstmefiress_shadow" then
      PlayEvent(_ARG_0_, "e0116", "e0116_end")
    elseif g_mission_information.mission_area == "firstmefiress_omega" then
      PlayEvent(_ARG_0_, "e1052", "e1052_end")
    end
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_tpj_end" then
    PlayEvent(_ARG_0_, "e0114", "e0114_end")
  elseif _ARG_1_ == "result_mefiress_end" then
    PlayEvent(_ARG_0_, "e0117", "e0117_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "tpj/shadow/c" then
    g_mission_information.mission_progress = 46
    SetGlobalFlag(_ARG_0_, 4091, 1)
    Result(_ARG_0_, "g_result_tpj")
  end
end
