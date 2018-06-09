g_mission_information = {
  mission_string = "msg_twn_sonic03",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0001/set_mission_0001.XML",
  mission_movie_start = "event/e0000/e0000.sfd",
  mission_startup = "e0000_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_path_default = "scripts/mission/0001/set_mission_0001_ring.path.XML",
  mission_disappear_people = true,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 0
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
  }
}
g_result_wvo = {
  stagename = "TOWN",
  id = 1,
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
  finish = "result_wvo_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_0002 = c_flag_start + 2
c_flag_0003 = c_flag_start + 3
c_flag_0004 = c_flag_start + 4
c_flag_0007 = c_flag_start + 7
c_flag_0009 = c_flag_start + 9
c_flag_talk_a011_03_1 = c_flag_start + 29
c_flag_talk_a012_03_1 = c_flag_start + 30
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0001/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
  if GetTemporaryFlag(_ARG_0_, c_flag_0007) == 0 and GetTemporaryFlag(_ARG_0_, c_flag_talk_a011_03_1) == 1 and GetTemporaryFlag(_ARG_0_, c_flag_talk_a012_03_1) == 1 then
    g_mission_information.mission_string = "msg_twn_sonic06"
    SetTemporaryFlag(_ARG_0_, c_flag_0007, 1)
  end
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e00_tl" then
    if GetGlobalFlag(_ARG_0_, 6000) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_e01_tl"
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/sonic/a" then
    if _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/sonic/b"
      g_mission_information.mission_set_default = "placement/twn/b/set_twn_b_060228.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "placement/twn/c/set_twn_c.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/sonic/b" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "placement/twn/c/set_twn_c.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/sonic/c" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0004/set_mission_0004.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/sonic/b"
      g_mission_information.mission_set_default = "placement/twn/b/set_twn_b_060228.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "wvo/sonic/a" and _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/wvo/b/"
    g_mission_information.mission_area = "wvo/sonic/b"
    g_mission_information.mission_set_default = "placement/wvo/set_wvoB_sonic.XML"
    g_mission_information.mission_path_default = "placement/wvo/wvo_s_b"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "debug_next" then
    SetNextMission(_ARG_0_, "scripts/mission/0003/mission.lua")
    MissionClear(_ARG_0_, "complete")
  end
  if _ARG_1_ == "shop_buy_6000" then
    SetTemporaryFlag(_ARG_0_, c_flag_0009, 1)
  elseif _ARG_1_ == "me0001" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      g_mission_information.mission_string = "msg_twn_sonic03"
      g_mission_information.mission_set_default = "scripts/mission/0001/set_mission_0001_01.XML"
      PlayEvent(_ARG_0_, "e0001", "e0001_end")
    end
  elseif _ARG_1_ == "me0002" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0009) == 0 then
      OpenWindow(_ARG_0_, "me0003")
    else
      OpenWindow(_ARG_0_, "me0003")
    end
  elseif _ARG_1_ == "goto_wvo" then
    g_mission_information.mission_string = "sonic_stg_wvo"
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "wvo/sonic/a"
    g_mission_information.mission_set_default = "placement/wvo/set_wvoA_sonic.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_path_default = "placement/wvo/wvo_s_a"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "waveocean"
  elseif _ARG_1_ == "e0000_end" then
    PlayEvent(_ARG_0_, "e0031", "e0031_end")
    g_mission_information.mission_movie_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "e0001_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_0003, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0004, 1)
    g_mission_information.mission_string = "msg_twn_sonic02"
  elseif _ARG_1_ == "e0002_end" then
    g_mission_information.mission_string = "msg_twn_sonic03"
    SetNextMission(_ARG_0_, "scripts/mission/0003/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_wvo_end" then
    PlayEvent(_ARG_0_, "e0002", "e0002_end")
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_twnA00401" then
    g_message_icon = c_icon_hint
  else
    g_message_icon = c_icon_chat
  end
  if _ARG_1_ == "msg_t00104a011" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0003) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t00104a012" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00104a080" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a081" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a082" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a083" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a901" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00104a902" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0003) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00104a903" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a904" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a905" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00104a906" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a907" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a908" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a909" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a910" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a911" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a912" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00104a913" then
    g_message_icon = c_icon_hint
  else
    g_message_icon = c_icon_chat
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
  if _ARG_1_ == "msg_t00104a011" then
    SetAnimationTalkWith(_ARG_0_, "talk_aseri", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t00104a012" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t00104a080" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a081" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a082" then
    SetAnimationTalkWith(_ARG_0_, "wait", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a901" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp013"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
      g_name_setuped = "msg_t_npp013"
      g_message_setuped = _ARG_1_ .. "_03_1"
    end
  elseif _ARG_1_ == "msg_t00104a902" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0003) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_02_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_03_1"
    end
  elseif _ARG_1_ == "msg_t00104a903" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t00104a904" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t00104a905" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t00104a906" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0004) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_03_1"
    end
  elseif _ARG_1_ == "msg_t00104a907" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a908" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp010"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a909" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "angry")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a910" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a911" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "sad")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a912" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
    g_name_setuped = "msg_t_npp010"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00104a913" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00104a901_01_1" or _ARG_1_ == "msg_t00104a902_01_1" then
    g_mission_information.mission_string = "msg_twn_sonic05"
    SetTemporaryFlag(_ARG_0_, c_flag_0003, 1)
  elseif _ARG_1_ == "msg_t00104a011_03_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a011_03_1, 1)
  elseif _ARG_1_ == "msg_t00104a012_03_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a012_03_1, 1)
  end
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 7
  SetGlobalFlag(_ARG_0_, 4000, 1)
  Result(_ARG_0_, "g_result_wvo")
end
