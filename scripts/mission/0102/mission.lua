g_mission_information = {
  mission_string = "msg_act01",
  mission_area = "csc/shadow/a",
  mission_terrain = "stage/csc/a/",
  mission_set_default = "scripts/mission/0102/set_cscA_shadow.XML",
  mission_event_start = "e0104",
  mission_startup = "e0104_end",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = true,
  mission_area_text = "crisiscity",
  mission_progress = 19
}
g_result_csc = {
  stagename = "TOWN",
  id = 62,
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
  finish = "result_csc_end"
}
g_result_flc = {
  stagename = "TOWN",
  id = 67,
  timebonus_base = 49000,
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
g_result_iblis = {
  stagename = "TOWN",
  id = 94,
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
  finish = "result_iblis_end"
}
g_message_setuped = ""
g_message_icon = 0
c_flag_start = 0
function main(_ARG_0_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "csc/shadow/a" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscB_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "csc/shadow/b" then
    g_mission_information.mission_terrain = "stage/csc/c/"
    g_mission_information.mission_area = "csc/shadow/c"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscC_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "csc/shadow/c" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "csc/shadow/f"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscF_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  else
    if g_mission_information.mission_area == "flc/shadow/a" then
      g_mission_information.mission_terrain = "stage/flc/b/"
      g_mission_information.mission_area = "flc/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/0102/set_flc_b_shadow.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    else
    end
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0104_end" then
    PlayEvent(_ARG_0_, "e0105", "e0105_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e0105_end" then
    PlayEvent(_ARG_0_, "e0106", "e0106_end")
  elseif _ARG_1_ == "e0106_end" then
    PlayEvent(_ARG_0_, "e0107", "e0107_end")
  elseif _ARG_1_ == "e0107_end" then
    PlayEvent(_ARG_0_, "e0108", "e0108_end")
  elseif _ARG_1_ == "e0108_end" then
    g_mission_information.mission_string = "shadow_stg_csc"
    g_mission_information.mission_terrain = "stage/csc/a/"
    g_mission_information.mission_area = "csc/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_cscA_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0109_end" then
    PlayEvent(_ARG_0_, "e0110", "e0110_end")
  elseif _ARG_1_ == "e0110_end" then
    g_mission_information.mission_string = "shadow_stg_flc"
    g_mission_information.mission_terrain = "stage/flc/a/"
    g_mission_information.mission_area = "flc/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_flc_a_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "flamecore"
  elseif _ARG_1_ == "e0111_end" then
    PlayEvent(_ARG_0_, "e1011", "e1011_end")
  elseif _ARG_1_ == "e1011_end" then
    g_mission_information.mission_string = "msg_act16"
    g_mission_information.mission_terrain = "stage/boss/secondiblis_flc/"
    g_mission_information.mission_area = "secondiblis_shadow"
    g_mission_information.mission_set_default = "scripts/mission/0102/set_secondiblis_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "iblis"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1012", "e1012_end")
  elseif _ARG_1_ == "e1012_end" then
    g_mission_information.mission_progress = 41
    SetGlobalFlag(_ARG_0_, 4093, 1)
    Result(_ARG_0_, "g_result_iblis")
  elseif _ARG_1_ == "e0112_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0103/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "BtoC" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "CtoF" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_d" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_kdv" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_csc_end" then
    PlayEvent(_ARG_0_, "e0109", "e0109_end")
  elseif _ARG_1_ == "result_flc_end" then
    PlayEvent(_ARG_0_, "e0111", "e0111_end")
  elseif _ARG_1_ == "result_iblis_end" then
    PlayEvent(_ARG_0_, "e0112", "e0112_end")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "csc/shadow/f" then
    g_mission_information.mission_progress = 31
    SetGlobalFlag(_ARG_0_, 4061, 1)
    Result(_ARG_0_, "g_result_csc")
  elseif g_mission_information.mission_area == "flc/shadow/b" then
    g_mission_information.mission_progress = 37
    SetGlobalFlag(_ARG_0_, 4066, 1)
    Result(_ARG_0_, "g_result_flc")
  end
end
