g_mission_information = {
  mission_string = "msg_twn_sonic25",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0010/set_mission_0010a_01.XML",
  mission_event_start = "e0021",
  mission_startup = "e0021_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 73
}
g_shop = {
  {
    message_first = "msg_shop_003",
    message_agree = "msg_shop_005",
    message_buy_item = "msg_shop_006",
    message_cancel_item = "msg_shop_007",
    message_second = "msg_shop_007",
    message_no_money = "msg_shop_008",
    message_end = "msg_shop_012"
  }
}
g_result_wvo = {
  stagename = "TOWN",
  id = 46,
  timebonus_base = 45000,
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
  finish = "result_wvo_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_0702 = c_flag_start + 2
c_flag_0707 = c_flag_start + 7
c_flag_0711 = c_flag_start + 11
c_flag_0713 = c_flag_start + 13
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0010/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t01009a964" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a965" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a966" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a971" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a973" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a974" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01009a001" then
    g_message_icon = c_icon_hint
  else
    g_message_icon = c_icon_chat
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/sonic/b"
      g_mission_information.mission_set_default = "scripts/mission/0010/set_mission_0010b.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "scripts/mission/0010/set_mission_0010c.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "wvo/sonic/a" then
    g_mission_information.mission_terrain = "stage/wvo/b/"
    g_mission_information.mission_area = "wvo/sonic/b"
    g_mission_information.mission_set_default = "placement/wvo/set_wvoB_sonic.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "e0021_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_0713, 1)
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "goto_wvo" then
    g_mission_information.mission_string = "sonic_stg_wvo_tails"
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "wvo/tails/a"
    g_mission_information.mission_set_default = "placement/wvo/set_wvoA_tails.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "waveocean_tails"
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_wvo_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0012/mission.lua")
    MissionClear(_ARG_0_, "complete")
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
  if _ARG_1_ == "msg_t01009a964" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_12_1"
  elseif _ARG_1_ == "msg_t01009a965" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp017"
    g_message_setuped = _ARG_1_ .. "_12_1"
  elseif _ARG_1_ == "msg_t01009a966" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_12_1"
  elseif _ARG_1_ == "msg_t01009a971" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_12_1"
  elseif _ARG_1_ == "msg_t01009a973" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_12_1"
  elseif _ARG_1_ == "msg_t01009a974" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_12_1"
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 81
  SetGlobalFlag(_ARG_0_, 4045, 1)
  Result(_ARG_0_, "g_result_wvo")
end
