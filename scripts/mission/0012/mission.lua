g_mission_information = {
  mission_string = "",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0012/set_mission_0012a.XML",
  mission_event_start = "e0022",
  mission_startup = "e0022_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 81
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
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
  },
  {
    name = "msg_shop_604",
    price = 5000,
    explain = "msg_shop_105",
    event = "shop_buy_6003",
    global_flag = 6004
  },
  {
    name = "msg_shop_605",
    price = 5000,
    explain = "msg_shop_106",
    event = "shop_buy_6004",
    global_flag = 6005
  },
  {
    name = "msg_shop_606",
    price = 7000,
    explain = "msg_shop_107",
    event = "shop_buy_6005",
    global_flag = 6006
  }
}
g_result_kdv = {
  stagename = "TOWN",
  id = 36,
  timebonus_base = 31000,
  timebonus_rate = 80,
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
g_select = {
  {
    name = "msg_m1000_001_01_1",
    event = "select_yes"
  },
  {
    name = "msg_m1000_002_01_1",
    event = "select_no"
  }
}
c_flag_start = 0
c_flag_0802 = c_flag_start + 1
c_flag_0804 = c_flag_start + 2
c_flag_0806 = c_flag_start + 3
c_flag_0807 = c_flag_start + 4
c_flag_0809 = c_flag_start + 6
c_flag_0810 = c_flag_start + 7
c_flag_0811 = c_flag_start + 8
c_flag_0812 = c_flag_start + 9
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0012/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_m1030_038" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      g_message_icon = c_icon_mission
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_m1031_040" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_m1032_039" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      g_message_icon = c_icon_mission
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t01210a046" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01210a970" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01210a971" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01210a972" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01210a973" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01210a974" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01210a981" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01210a986" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01210a987" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01210a988" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01210c046" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t01210a001" then
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
      g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012b.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012c.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/sonic/c" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012a.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/sonic/b"
      g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012b.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "kdv/sonic/a" then
    g_mission_information.mission_terrain = "stage/kdv/d/"
    g_mission_information.mission_area = "kdv/sonic/d"
    g_mission_information.mission_set_default = "placement/kdv/set_kdv_d_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "kdv/sonic/b" then
    g_mission_information.mission_terrain = "stage/kdv/c/"
    g_mission_information.mission_area = "kdv/sonic/c"
    g_mission_information.mission_set_default = "placement/kdv/set_kdv_c_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "kdv/sonic/d" then
    g_mission_information.mission_terrain = "stage/kdv/b/"
    g_mission_information.mission_area = "kdv/sonic/b"
    g_mission_information.mission_set_default = "placement/kdv/set_kdv_b_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me0021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0804) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_0804, 1)
      g_mission_information.mission_string = "msg_twn_sonic29"
    end
  elseif _ARG_1_ == "goto_kdv" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0811) == 1 then
      PlayEvent(_ARG_0_, "e0023", "e0023_end")
    end
  elseif _ARG_1_ == "e0022_end" then
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
    g_mission_information.mission_string = "msg_twn_sonic28"
  elseif _ARG_1_ == "e0023_end" then
    g_mission_information.mission_string = "sonic_sonic_stg_kdv"
    g_mission_information.mission_terrain = "stage/kdv/a/"
    g_mission_information.mission_area = "kdv/sonic/a"
    g_mission_information.mission_set_default = "placement/kdv/set_kdv_a_sonic.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "kingdomvalley"
  elseif _ARG_1_ == "e0024_end" then
    PlayEvent(_ARG_0_, "e0026", "e0026_end")
  elseif _ARG_1_ == "e0026_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0014/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_kdv_end" then
    PlayEvent(_ARG_0_, "e0024", "e0024_end")
  elseif _ARG_1_ == "select_yes" then
    OpenWindow(_ARG_0_, "msg_t01210a046_03_2")
  elseif _ARG_1_ == "select_no" then
    OpenWindow(_ARG_0_, "msg_t01210a046_03_3")
  elseif _ARG_1_ == "1030_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0809, 1)
  elseif _ARG_1_ == "1032_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0810, 1)
  elseif _ARG_1_ == "1031_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_0811, 1)
    g_mission_information.mission_string = "msg_twn_sonic32"
    g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012c_02.XML"
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
  if _ARG_1_ == "msg_m1030_038" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_06_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_07_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  elseif _ARG_1_ == "msg_m1031_040" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_06_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_07_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  elseif _ARG_1_ == "msg_m1032_039" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_06_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_07_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  elseif _ARG_1_ == "msg_t01210a046" then
    g_talk_reuse = 1
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp034"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a970" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp013"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a971" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a972" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a973" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a974" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp010"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a981" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a986" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a987" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210a988" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t01210c046" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0809) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_05_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0810) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_06_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0811) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_07_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp034"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t01210a046_01_1" then
    OpenSelect(_ARG_0_, "g_select")
  elseif _ARG_1_ == "msg_m1030_038_05_1" then
    CallMission(_ARG_0_, "scripts/mission/1030/mission.lua", "1030_complete")
  elseif _ARG_1_ == "msg_m1032_039_06_1" then
    CallMission(_ARG_0_, "scripts/mission/1032/mission.lua", "1032_complete")
  elseif _ARG_1_ == "msg_m1031_040_07_1" then
    CallMission(_ARG_0_, "scripts/mission/1031/mission.lua", "1031_complete")
  elseif _ARG_1_ == "msg_t01210a046_03_2" then
    SetTemporaryFlag(_ARG_0_, c_flag_0807, 1)
    g_mission_information.mission_string = "msg_twn_sonic30"
    g_mission_information.mission_terrain = "stage/twn/c/"
    g_mission_information.mission_area = "twn/sonic/c"
    g_mission_information.mission_set_default = "scripts/mission/0012/set_mission_0012c_01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "msg_solleanna_c"
  end
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 93
  SetGlobalFlag(_ARG_0_, 4035, 1)
  Result(_ARG_0_, "g_result_kdv")
end
