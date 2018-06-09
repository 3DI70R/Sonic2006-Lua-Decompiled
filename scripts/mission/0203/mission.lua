g_mission_information = {
  mission_string = "msg_twn_silver13",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0203/set_mission_0203a.XML",
  mission_event_start = "e0208",
  mission_startup = "e0208_end",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 32
}
g_shop = {
  {
    message_first = "msg_shop_001",
    message_agree = "msg_shop_005",
    message_buy_item = "msg_shop_006",
    message_cancel_item = "msg_shop_007",
    message_second = "msg_shop_007",
    message_no_money = "msg_shop_008",
    message_soldout = "msg_shop_011",
    message_end = "msg_shop_012"
  },
  {
    name = "msg_shop_616",
    price = 200,
    explain = "msg_shop_301",
    event = "shop_buy_6016",
    global_flag = 6016
  },
  {
    name = "msg_shop_617",
    price = 500,
    explain = "msg_shop_302",
    event = "shop_buy_6017",
    global_flag = 6017
  },
  {
    name = "msg_shop_619",
    price = 1500,
    explain = "msg_shop_304",
    event = "shop_buy_6019",
    global_flag = 6019
  }
}
g_message_setuped = ""
g_message_icon = 0
g_result_sonic = {
  stagename = "TOWN",
  id = 140,
  timebonus_base = 21000,
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
  finish = "result_sonic_end"
}
g_result_wap = {
  stagename = "TOWN",
  id = 113,
  timebonus_base = 41000,
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
  finish = "result_wap_end"
}
g_result_genesis = {
  stagename = "TOWN",
  id = 141,
  timebonus_base = 26000,
  timebonus_rate = 80,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_genesis_end"
}
c_flag_start = 0
c_flag_2310 = c_flag_start + 0
c_flag_2312 = c_flag_start + 1
c_flag_2315 = c_flag_start + 2
c_flag_2302 = c_flag_start + 3
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0203/mission_talk.lua")
script.reload("scripts/mission/0201/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e30_bz" then
    if GetGlobalFlag(_ARG_0_, 6019) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_h10_so"
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t20306b836" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20306b840" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20306b842" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20306b843" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20306b844" then
    g_message_icon = c_icon_hint
  else
    g_message_icon = c_icon_chat
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if mission_talk(_ARG_0_, _ARG_1_) == true then
    printf("mission_talk true")
    return
  end
  if missionman_talk_setup(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "shop" then
    OpenShop(_ARG_0_, "g_shop")
    g_message_setuped = ""
  end
  if _ARG_1_ == "msg_t20306b836" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20306b840" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp010"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20306b842" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20306b843" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20306b844" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/a" then
    g_mission_information.mission_terrain = "stage/twn/b"
    g_mission_information.mission_area = "twn/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0203/set_mission_0203b01.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = false
    g_mission_information.mission_area_text = "msg_solleanna_b"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "twn/silver/b" then
    if _ARG_1_ == "goto_wap" then
      g_mission_information.mission_string = "silver_stg_wap"
      g_mission_information.mission_terrain = "stage/wap/a"
      g_mission_information.mission_area = "wap/silver/a"
      g_mission_information.mission_set_default = "scripts/mission/0203/set_wap_a_silver.XML"
      g_mission_information.mission_path_default = ""
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "wap/silver/a" and _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/wap/b"
    g_mission_information.mission_area = "wap/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0203/set_wap_b_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "e0208_end" then
    PlayEvent(_ARG_0_, "e1141", "e1141_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e1141_end" then
    g_mission_information.mission_string = "msg_act22"
    g_mission_information.mission_terrain = "stage/twn/a"
    g_mission_information.mission_area = "boss/silver_vs_sonic"
    g_mission_information.mission_set_default = "scripts/mission/0203/set_silver_vs_sonic.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    if g_mission_information.mission_area == "boss/silver_vs_sonic" then
      g_mission_information.mission_progress = 40
      SetGlobalFlag(_ARG_0_, 4139, 1)
      Result(_ARG_0_, "g_result_sonic")
    elseif g_mission_information.mission_area == "eGenesis_silver" then
      g_mission_information.mission_progress = 57
      g_mission_information.mission_area_text = "whiteacropolis"
      SetGlobalFlag(_ARG_0_, 4140, 1)
      Result(_ARG_0_, "g_result_genesis")
    end
  elseif _ARG_1_ == "result_sonic_end" then
    PlayEvent(_ARG_0_, "e0209", "e0209_end")
  elseif _ARG_1_ == "e0209_end" then
    PlayEvent(_ARG_0_, "e0210", "e0210_end")
  elseif _ARG_1_ == "e0210_end" then
    PlayEvent(_ARG_0_, "e0211", "e0211_end")
  elseif _ARG_1_ == "e0211_end" then
    g_mission_information.mission_string = "msg_twn_silver13"
    g_mission_information.mission_terrain = "stage/twn/b"
    g_mission_information.mission_area = "twn/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0203/set_mission_0204b_01.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = false
    g_mission_information.mission_area_text = "msg_solleanna_b"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_wap" then
    g_mission_information.mission_area_text = "whiteacropolis"
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_wap_end" then
    PlayEvent(_ARG_0_, "e0212", "e0212_end")
  elseif _ARG_1_ == "e0212_end" then
    PlayEvent(_ARG_0_, "e1101", "e1101_end")
  elseif _ARG_1_ == "e1101_end" then
    g_mission_information.mission_string = "msg_act27"
    g_mission_information.mission_terrain = "stage/boss/dr1_wap/"
    g_mission_information.mission_area = "eGenesis_silver"
    g_mission_information.mission_set_default = "scripts/mission/0203/set_eGenesis_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_genesis_end" then
    PlayEvent(_ARG_0_, "e0213", "e0213_end")
  elseif _ARG_1_ == "e0213_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0208/mission.lua")
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "wap/silver/b" then
    g_mission_information.mission_progress = 50
    g_mission_information.mission_area_text = "egggenesis"
    SetGlobalFlag(_ARG_0_, 4112, 1)
    Result(_ARG_0_, "g_result_wap")
  end
end
