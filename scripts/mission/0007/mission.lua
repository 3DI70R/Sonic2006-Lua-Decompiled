g_mission_information = {
  mission_string = "msg_twn_sonic18",
  mission_area = "twn/sonic/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/0007/set_mission_0007b.XML",
  mission_event_start = "e0016",
  mission_startup = "e0016_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_b",
  mission_progress = 55
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
  },
  {
    name = "msg_shop_429",
    price = 2000,
    explain = "msg_shop_103",
    event = "shop_buy_6002",
    global_flag = 6002
  }
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
g_result_rct = {
  stagename = "TOWN",
  id = 26,
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
  finish = "result_rct_end"
}
c_flag_start = 0
c_flag_0502 = c_flag_start + 2
c_flag_0504 = c_flag_start + 4
c_flag_0505 = c_flag_start + 5
c_flag_0507 = c_flag_start + 7
c_flag_0508 = c_flag_start + 8
c_flag_0509 = c_flag_start + 9
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0007/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e06_tl" then
    if GetGlobalFlag(_ARG_0_, 6002) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_e07_tl"
    end
    g_mission_information.mission_string = "msg_twn_sonic20"
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00707b951" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b952" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b953" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b954" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b955" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00707b956" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00707b957" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00707b958" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b959" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00707b960" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00707b961" then
    g_message_icon = c_icon_chat
  else
    g_message_icon = c_icon_chat
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "rct/sonic/a" then
    g_mission_information.mission_terrain = "stage/rct/b/"
    g_mission_information.mission_area = "rct/sonic/b"
    g_mission_information.mission_set_default = "placement/rct/set_rctB_sonic.xml"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "shop_buy_6002" then
    SetTemporaryFlag(_ARG_0_, c_flag_0507, 1)
  elseif _ARG_1_ == "e0016_end" then
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "me0013" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0504) == 1 then
      SetTemporaryFlag(_ARG_0_, c_flag_0505, 1)
      g_mission_information.mission_string = "msg_twn_sonic20"
    end
  elseif _ARG_1_ == "goto_rct" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0507) == 1 then
      g_mission_information.mission_string = "sonic_stg_rdt"
      g_mission_information.mission_terrain = "stage/rct/a/"
      g_mission_information.mission_area = "rct/sonic/a"
      g_mission_information.mission_set_default = "placement/rct/set_rctA_sonic.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
      g_mission_information.mission_area_text = "radicaltrain"
    end
  elseif _ARG_1_ == "e0017_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0008/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_rct_end" then
    PlayEvent(_ARG_0_, "e0017", "e0017_end")
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
  if _ARG_1_ == "msg_t00707b951" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b952" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp017"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b953" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b954" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b955" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b956" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b957" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b958" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b959" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b960" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "surpise")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00707b961" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
    g_name_setuped = "msg_t_npp004"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00707b952_01_1" or _ARG_1_ == "msg_t00707b953_01_1" or _ARG_1_ == "msg_t00707b954_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0504, 1)
    g_mission_information.mission_string = "msg_twn_sonic19"
  end
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 60
  SetGlobalFlag(_ARG_0_, 4025, 1)
  Result(_ARG_0_, "g_result_rct")
end
