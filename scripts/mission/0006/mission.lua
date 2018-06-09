g_mission_information = {
  mission_string = "sonic_stg_csc",
  mission_area = "csc/sonic/a",
  mission_terrain = "stage/csc/a/",
  mission_set_default = "placement/csc/set_cscA_sonic.XML",
  mission_event_start = "e0009",
  mission_startup = "e0009_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = true,
  mission_area_text = "crisiscity",
  mission_progress = 35
}
g_message_setuped = ""
g_result_csc = {
  stagename = "TOWN",
  id = 16,
  timebonus_base = 47000,
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
g_result_flc = {
  stagename = "TOWN",
  id = 21,
  timebonus_base = 50000,
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
  finish = "result_flc_end"
}
g_result_iblis2 = {
  stagename = "TOWN",
  id = 49,
  timebonus_base = 39000,
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
  finish = "result_iblis2_end"
}
c_flag_start = 0
script.reload("scripts/mission/0006/mission_talk.lua")
function main(_ARG_0_)
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "csc/sonic/a" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/sonic/b"
    g_mission_information.mission_set_default = "placement/csc/set_cscB_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "csc/sonic/b" then
    g_mission_information.mission_terrain = "stage/csc/c/"
    g_mission_information.mission_area = "csc/sonic/c"
    g_mission_information.mission_set_default = "placement/csc/set_cscC_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "csc/sonic/c" then
    g_mission_information.mission_terrain = "stage/csc/e/"
    g_mission_information.mission_area = "csc/sonic/e"
    g_mission_information.mission_set_default = "placement/csc/set_cscE_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "flc/sonic/a" then
    g_mission_information.mission_terrain = "stage/flc/b/"
    g_mission_information.mission_area = "flc/sonic/b"
    g_mission_information.mission_set_default = "placement/flc/set_flc_b_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0009_end" then
    PlayEvent(_ARG_0_, "e0010", "e0010_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e0010_end" then
    PlayEvent(_ARG_0_, "e0011", "e0011_end")
  elseif _ARG_1_ == "e0011_end" then
  elseif _ARG_1_ == "e0012_end" then
    PlayEvent(_ARG_0_, "e0013", "e0013_end")
  elseif _ARG_1_ == "e0013_end" then
    g_mission_information.mission_string = "sonic_stg_flc"
    g_mission_information.mission_terrain = "stage/flc/a/"
    g_mission_information.mission_area = "flc/sonic/a"
    g_mission_information.mission_set_default = "placement/flc/set_flc_a_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "flamecore"
  elseif _ARG_1_ == "e0014_end" then
    PlayEvent(_ARG_0_, "e1011", "e1011_end")
  elseif _ARG_1_ == "e1011_end" then
    g_mission_information.mission_string = "msg_act16"
    g_mission_information.mission_terrain = "stage/boss/secondiblis_flc/"
    g_mission_information.mission_area = "secondiblis_sonic"
    g_mission_information.mission_set_default = "placement/boss/secondiblis/set_secondiblis_sonic.xml"
    g_mission_information.mission_area_text = "crisiscity"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0015_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0007/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "BtoC" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "CtoE" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_csc_end" then
    PlayEvent(_ARG_0_, "e0012", "e0012_end")
  elseif _ARG_1_ == "result_flc_end" then
    PlayEvent(_ARG_0_, "e0014", "e0014_end")
  elseif _ARG_1_ == "result_iblis2_end" then
    PlayEvent(_ARG_0_, "e0015", "e0015_end")
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1012", "e1012_end")
  elseif _ARG_1_ == "e1012_end" then
    g_mission_information.mission_progress = 50
    SetGlobalFlag(_ARG_0_, 4048, 1)
    Result(_ARG_0_, "g_result_iblis2")
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if mission_talk(_ARG_0_, _ARG_1_) == true then
    printf("mission_talk true")
    return
  end
  printf("mission_talk false")
  g_message_setuped = _ARG_1_ .. "0"
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "csc/sonic/e" then
    g_mission_information.mission_progress = 40
    SetGlobalFlag(_ARG_0_, 4015, 1)
    SetGlobalFlag(_ARG_0_, 51, 1)
    Result(_ARG_0_, "g_result_csc")
  elseif g_mission_information.mission_area == "flc/sonic/b" then
    g_mission_information.mission_progress = 45
    g_mission_information.mission_area_text = "iblis"
    SetGlobalFlag(_ARG_0_, 4020, 1)
    Result(_ARG_0_, "g_result_flc")
  end
end
