g_mission_information = {
  mission_string = "msg_act24",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0004/set_mission_0004a_01.XML",
  mission_event_start = "e0006",
  mission_startup = "e0006_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 21
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
    name = "msg_shop_427",
    price = 100,
    explain = "msg_shop_101",
    event = "shop_buy_6000",
    global_flag = 6000
  },
  {
    name = "msg_shop_428",
    price = 500,
    explain = "msg_shop_102",
    event = "shop_buy_6001",
    global_flag = 6001
  }
}
g_result_silver = {
  stagename = "TOWN",
  id = 48,
  timebonus_base = 24000,
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
  finish = "result_silver_end"
}
g_result_wap = {
  stagename = "TOWN",
  id = 11,
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
  finish = "result_wap_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_0303 = c_flag_start + 1
c_flag_0306 = c_flag_start + 2
c_flag_0308 = c_flag_start + 3
c_flag_0310 = c_flag_start + 5
c_flag_0312 = c_flag_start + 7
c_flag_0315 = c_flag_start + 8
c_flag_0316 = c_flag_start + 9
c_flag_0318 = c_flag_start + 10
c_flag_0321 = c_flag_start + 11
c_flag_0322 = c_flag_start + 12
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0004/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e04_tl" then
    g_message_setuped = "hint_twn01_e04_tl"
    g_mission_information.mission_string = "msg_twn_sonic14"
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_m1011_035" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a927" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00406a928" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a929" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00406a930" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00406a931" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t00406a933" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a934" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a935" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a936" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406a937" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00406a996" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406b938" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406b939" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0316) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00406b940" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t00406b941" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t00406b942" then
    g_message_icon = c_icon_chat
  else
    g_message_icon = c_icon_chat
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/sonic/b"
      g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004b.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
      g_mission_information.mission_area_text = "msg_solleanna_b"
    end
  elseif g_mission_information.mission_area == "twn/sonic/b" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004a_01.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "wap/sonic/a" then
    g_mission_information.mission_terrain = "stage/wap/b/"
    g_mission_information.mission_area = "wap/sonic/b"
    g_mission_information.mission_set_default = "placement/wap/set_wap_b_sonic.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me0008" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0316) == 0 then
      CallMission(_ARG_0_, "scripts/mission/1025/mission.lua", "1025_complete")
    end
  elseif _ARG_1_ == "1025_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0316, 1)
    g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004b_03.XML"
  elseif _ARG_1_ == "me0009" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0316) == 1 and GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      PlayMovie(_ARG_0_, "event/e0008/e0008.wmv", "e0008_end")
    end
  elseif _ARG_1_ == "e0008_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_0318, 1)
    g_mission_information.mission_string = "msg_twn_sonic17"
    g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004b_01.XML"
  elseif _ARG_1_ == "me0010" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 1 and GetTemporaryFlag(_ARG_0_, c_flag_0322) == 0 then
      CallMission(_ARG_0_, "scripts/mission/1027/mission.lua", "1027_complete")
    end
  elseif _ARG_1_ == "1027_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0322, 1)
    g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004b_02.XML"
  elseif _ARG_1_ == "goto_wap" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0322) == 1 then
      g_mission_information.mission_string = "sonic_stg_wap"
      g_mission_information.mission_terrain = "stage/wap/a/"
      g_mission_information.mission_area = "wap/sonic/a"
      g_mission_information.mission_set_default = "placement/wap/set_wap_a_sonic.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
      g_mission_information.mission_area_text = "whiteacropolis"
    end
  elseif _ARG_1_ == "boss_is_dead" then
    g_mission_information.mission_progress = 23
    SetGlobalFlag(_ARG_0_, 4047, 1)
    SetGlobalFlag(_ARG_0_, 50, 1)
    Result(_ARG_0_, "g_result_silver")
  elseif _ARG_1_ == "result_silver_end" then
    PlayEvent(_ARG_0_, "e0007", "e0007_end")
    SetTemporaryFlag(_ARG_0_, c_flag_0306, 1)
  elseif _ARG_1_ == "e0006_end" then
    PlayEvent(_ARG_0_, "e1151", "e1151_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e1151_end" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "boss/sonic_vs_silver"
    g_mission_information.mission_set_default = "placement/boss/vs_character/set_sonic_vs_silver.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0007_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_0308, 1)
    g_mission_information.mission_string = "msg_twn_sonic13"
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004a_01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "BtoC" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "CtoE" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_wap_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0006/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "1011_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0310, 1)
    g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004a_02.XML"
  end
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
  if _ARG_1_ == "msg_m1011_035" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp044"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp045"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp040"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
      g_name_setuped = "msg_t_npp040"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a927" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_npp013"
    g_message_setuped = _ARG_1_ .. "_09_1"
  elseif _ARG_1_ == "msg_t00406a928" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a929" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_09_1"
  elseif _ARG_1_ == "msg_t00406a930" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_09_1"
  elseif _ARG_1_ == "msg_t00406a931" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a933" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "surprise")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a934" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a935" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a936" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "normal")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "normal")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406a937" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_09_1"
  elseif _ARG_1_ == "msg_t00406a996" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0310) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp043"
      g_message_setuped = _ARG_1_ .. "_09_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp043"
      g_message_setuped = _ARG_1_ .. "_10_1"
    end
  elseif _ARG_1_ == "msg_t00406b938" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_10_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_18_1"
    end
  elseif _ARG_1_ == "msg_t00406b939" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0316) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp017"
      g_message_setuped = _ARG_1_ .. "_10_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "surprise")
      g_name_setuped = "msg_t_npp017"
      g_message_setuped = _ARG_1_ .. "_16_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp017"
      g_message_setuped = _ARG_1_ .. "_18_1"
    end
  elseif _ARG_1_ == "msg_t00406b940" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_10_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_18_1"
    end
  elseif _ARG_1_ == "msg_t00406b941" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0318) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_10_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_18_1"
    end
  elseif _ARG_1_ == "msg_t00406b942" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_10_1"
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_m1008_031_08_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0309, 1)
    CallMission(_ARG_0_, "scripts/mission/1008/mission.lua")
  elseif _ARG_1_ == "msg_m1011_035_09_1" then
    CallMission(_ARG_0_, "scripts/mission/1011/mission.lua", "1011_complete")
  end
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 32
  SetGlobalFlag(_ARG_0_, 4010, 1)
  Result(_ARG_0_, "g_result_wap")
end
