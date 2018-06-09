g_mission_information = {
  mission_string = "msg_twn_silver17",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0211/set_mission_0211a_01.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 82
}
g_message_setuped = ""
g_message_icon = 0
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
    name = "msg_shop_618",
    price = 1000,
    explain = "msg_shop_303",
    event = "shop_buy_6018",
    global_flag = 6018
  },
  {
    name = "msg_shop_619",
    price = 1500,
    explain = "msg_shop_304",
    event = "shop_buy_6019",
    global_flag = 6019
  }
}
g_result_kdv = {
  stagename = "TOWN",
  id = 128,
  timebonus_base = 51000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_kdv_end"
}
g_result_flc = {
  stagename = "TOWN",
  id = 133,
  timebonus_base = 66000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 50000,
  rank_a = 45000,
  rank_b = 25000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 4000,
  ringbonus_a = 3000,
  ringbonus_b = 1500,
  ringbonus_c = 1000,
  ringbonus_d = 500,
  finish = "result_flc_end"
}
g_result_iblis = {
  stagename = "TOWN",
  id = 143,
  timebonus_base = 34000,
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
  finish = "result_iblis_end"
}
c_flag_start = 0
c_flag_play_event = c_flag_start + 0
c_flag_2604 = c_flag_start + 1
c_flag_2611 = c_flag_start + 2
c_flag_2614 = c_flag_start + 3
c_flag_2615 = c_flag_start + 4
c_flag_2616 = c_flag_start + 5
c_flag_2617 = c_flag_start + 6
c_flag_2632 = c_flag_start + 7
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0211/mission_talk.lua")
script.reload("scripts/mission/0201/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t21110a046" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2632) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t21110a862" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2611) == 0 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t21110a863" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t21110c401" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      g_message_icon = c_icon_mission
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t21110c402" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      g_message_icon = c_icon_mission
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t21110c403" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_chat
    end
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
  if _ARG_1_ == "msg_t21110a046" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2632) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_11_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_12_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_14_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_15_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_16_1"
    end
  elseif _ARG_1_ == "msg_t21110a862" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2611) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_06_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_11_1"
    end
  elseif _ARG_1_ == "msg_t21110a863" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_11_1"
  elseif _ARG_1_ == "msg_t21110c401" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_12_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_14_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_15_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_16_1"
    end
  elseif _ARG_1_ == "msg_t21110c402" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_12_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_14_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_15_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_16_1"
    end
  elseif _ARG_1_ == "msg_t21110c403" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_12_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2615) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_14_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2617) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_15_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_16_1"
    end
  else
    g_name_setuped = ""
    g_message_setuped = ""
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/a" then
    if _ARG_1_ == "goto_c" then
      SetTemporaryFlag(_ARG_0_, c_flag_2632, 1)
      g_mission_information.mission_area_text = "msg_solleanna_c"
      if GetTemporaryFlag(_ARG_0_, c_flag_2614) == 0 then
        g_mission_information.mission_terrain = "stage/twn/c/"
        g_mission_information.mission_area = "twn/silver/c"
        g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211c.XML"
        g_mission_information.mission_path_default = ""
        g_mission_information.mission_is_battle = false
        ChangeArea(_ARG_0_, g_mission_information.mission_area)
      elseif GetTemporaryFlag(_ARG_0_, c_flag_2616) == 0 then
        g_mission_information.mission_terrain = "stage/twn/c/"
        g_mission_information.mission_area = "twn/silver/c"
        g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211c_01.XML"
        g_mission_information.mission_path_default = ""
        g_mission_information.mission_is_battle = false
        ChangeArea(_ARG_0_, g_mission_information.mission_area)
      else
        g_mission_information.mission_terrain = "stage/twn/c/"
        g_mission_information.mission_area = "twn/silver/c"
        g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211c_02.XML"
        g_mission_information.mission_path_default = ""
        g_mission_information.mission_is_battle = false
        ChangeArea(_ARG_0_, g_mission_information.mission_area)
      end
    end
  elseif g_mission_information.mission_area == "twn/silver/c" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/silver/a"
      g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211a_02.XML"
      g_mission_information.mission_path_default = ""
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "flc/silver/a" then
    g_mission_information.mission_terrain = "stage/flc/b/"
    g_mission_information.mission_area = "flc/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0211/set_flc_b_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0211/path_flcB_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "kdv/silver/d" then
    g_mission_information.mission_terrain = "stage/kdv/b/"
    g_mission_information.mission_area = "kdv/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0211/set_kdv_b_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me2604" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2604) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_2604, 1)
      g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211a_01.XML"
      CallMission(_ARG_0_, "scripts/mission/1230/mission.lua")
    end
  elseif _ARG_1_ == "goto_kdv" then
    g_mission_information.mission_area_text = "kingdomvalley"
    PlayEvent(_ARG_0_, "e0224", "e0224_end")
  elseif _ARG_1_ == "e0224_end" then
    g_mission_information.mission_string = "silver_stg_kdv"
    g_mission_information.mission_terrain = "stage/kdv/d/"
    g_mission_information.mission_area = "kdv/silver/d"
    g_mission_information.mission_set_default = "scripts/mission/0211/set_kdv_d_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0211/kdv_silver_d"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_kdv_end" then
    PlayEvent(_ARG_0_, "e0225", "e0225_end")
  elseif _ARG_1_ == "e0225_end" then
    PlayEvent(_ARG_0_, "e0226", "e0226_end")
  elseif _ARG_1_ == "e0226_end" then
    g_mission_information.mission_string = "silver_stg_flc"
    g_mission_information.mission_terrain = "stage/flc/a/"
    g_mission_information.mission_area = "flc/silver/a"
    g_mission_information.mission_set_default = "scripts/mission/0211/set_flc_a_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0211/path_flcA_silver"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "flamecore"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_flc_end" then
    PlayEvent(_ARG_0_, "e0227", "e0227_end")
  elseif _ARG_1_ == "e0227_end" then
    PlayEvent(_ARG_0_, "e1031", "e1031_end")
  elseif _ARG_1_ == "e1031_end" then
    g_mission_information.mission_string = "msg_act21"
    g_mission_information.mission_terrain = "stage/boss/thirdiblis_flc/"
    g_mission_information.mission_area = "thirdiblis_silver"
    g_mission_information.mission_set_default = "scripts/mission/0211/set_thirdiblis_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1032", "e1032_end")
  elseif _ARG_1_ == "e1032_end" then
    g_mission_information.mission_progress = 100
    SetGlobalFlag(_ARG_0_, 4142, 1)
    SetGlobalFlag(_ARG_0_, 4147, 1)
    Result(_ARG_0_, "g_result_iblis")
  elseif _ARG_1_ == "result_iblis_end" then
    PlayMovie(_ARG_0_, "event/e0228/e0228.sfd", "e0228_end")
  elseif _ARG_1_ == "e0228_end" then
    g_mission_information.mission_progress = 100
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "1208_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2611, 1)
    g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211a_02.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "1237_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2614, 1)
    g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211c_01.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "1232_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2615, 1)
  elseif _ARG_1_ == "1238_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2616, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_2617, 1)
    g_mission_information.mission_set_default = "scripts/mission/0211/set_mission_0211c_02.XML"
    g_mission_information.mission_string = "msg_twn_silver21"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t21110a862_06_1" then
    CallMission(_ARG_0_, "scripts/mission/1208/mission.lua", "1208_complete")
  elseif _ARG_1_ == "msg_t21110a862_11_1" then
    g_mission_information.mission_string = "msg_twn_silver20"
  elseif _ARG_1_ == "msg_t21110c401_12_1" then
    CallMission(_ARG_0_, "scripts/mission/1237/mission.lua", "1237_complete")
  elseif _ARG_1_ == "msg_t21110c402_14_1" then
    CallMission(_ARG_0_, "scripts/mission/1232/mission.lua", "1232_complete")
  elseif _ARG_1_ == "msg_t21110c403_15_1" then
    CallMission(_ARG_0_, "scripts/mission/1238/mission.lua", "1238_complete")
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "flc/silver/b" then
    g_mission_information.mission_area_text = "iblis"
    g_mission_information.mission_progress = 97
    SetGlobalFlag(_ARG_0_, 4132, 1)
    Result(_ARG_0_, "g_result_flc")
  elseif g_mission_information.mission_area == "kdv/silver/b" then
    g_mission_information.mission_progress = 93
    SetGlobalFlag(_ARG_0_, 4127, 1)
    Result(_ARG_0_, "g_result_kdv")
  end
end
