g_mission_information = {
  mission_string = "msg_twn_sonic03",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0003/set_mission_0003a.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_disappear_people = true,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 8
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
g_result_cerberus = {
  stagename = "TOWN",
  id = 47,
  timebonus_base = 23500,
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
  finish = "result_cerberus_end"
}
g_result_dtd = {
  stagename = "TOWN",
  id = 6,
  timebonus_base = 43000,
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
  finish = "result_dtd_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_0202 = c_flag_start + 1
c_flag_0203 = c_flag_start + 2
c_flag_0204 = c_flag_start + 3
c_flag_0205 = c_flag_start + 4
c_flag_0206 = c_flag_start + 5
c_flag_0207 = c_flag_start + 6
c_flag_talk_a062_01_1 = c_flag_start + 27
c_flag_talk_a056_01_1 = c_flag_start + 28
c_flag_talk_a022_01_1 = c_flag_start + 29
c_flag_talk_a017_01_1 = c_flag_start + 30
c_flag_talk_a018_01_1 = c_flag_start + 31
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0003/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
  if GetTemporaryFlag(_ARG_0_, c_flag_0202) == 0 and GetTemporaryFlag(_ARG_0_, c_flag_talk_a017_01_1) == 1 and GetTemporaryFlag(_ARG_0_, c_flag_talk_a018_01_1) == 1 then
    g_mission_information.mission_string = "msg_twn_sonic07"
    SetTemporaryFlag(_ARG_0_, c_flag_0202, 1)
  end
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e02_tl" then
    if GetGlobalFlag(_ARG_0_, 6001) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_all03_h26_so"
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00305a005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a017" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00305a018" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0205) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0207) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a022" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t00305a921" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t00305a922" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0204) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0205) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a923" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0207) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a924" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0204) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a925" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t00305a926" then
    g_message_icon = c_icon_chat
  else
    g_message_icon = c_icon_chat
  end
end
function on_goto(_ARG_0_, _ARG_1_)
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "shop_buy_6001" then
    SetTemporaryFlag(_ARG_0_, c_flag_0205, 1)
  elseif _ARG_1_ == "me0004" then
  elseif _ARG_1_ == "goto_dtd" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 1 then
      g_mission_information.mission_string = "msg_act28"
      PlayEvent(_ARG_0_, "e0003", "e0003_end")
    end
  elseif _ARG_1_ == "e0003_end" then
    PlayEvent(_ARG_0_, "e1071", "e1071_end")
  elseif _ARG_1_ == "e1071_end" then
    g_mission_information.mission_string = "msg_act28"
    g_mission_information.mission_terrain = "stage/boss/dr1_dtd/"
    g_mission_information.mission_area = "eCerberus_sonic"
    g_mission_information.mission_set_default = "placement/boss/dr1/set_eCerberus_sonic.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "eggcerberus"
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1072", "e1072_end")
  elseif _ARG_1_ == "e1072_end" then
    g_mission_information.mission_progress = 15
    g_mission_information.mission_string = "msg_stg_dtd_sonic"
    SetGlobalFlag(_ARG_0_, 4046, 1)
    Result(_ARG_0_, "g_result_cerberus")
  elseif _ARG_1_ == "e0004_end" then
    g_mission_information.mission_string = "sonic_stg_dtd_sonic"
    g_mission_information.mission_terrain = "stage/dtd/a/"
    g_mission_information.mission_area = "dtd/sonic/a"
    g_mission_information.mission_set_default = "placement/dtd/set_dtd_a_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "dustydesert"
  elseif _ARG_1_ == "e0005_movie_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0004/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_cerberus_end" then
    PlayEvent(_ARG_0_, "e0004", "e0004_end")
  elseif _ARG_1_ == "result_dtd_end" then
    PlayMovie(_ARG_0_, "event/e0005/e0005.sfd", "e0005_movie_end")
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
  if _ARG_1_ == "msg_t00305a005" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait_naki", "sad")
      g_name_setuped = "msg_t_npp040"
      g_message_setuped = _ARG_1_ .. "_05_1"
    else
      SetAnimationTalkWith(_ARG_0_, "wait", "sad")
      g_name_setuped = "msg_t_npp040"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t00305a017" then
    SetAnimationTalkWith(_ARG_0_, "wait_arm", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00305a018" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t00305a021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "angry")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0205) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "angry")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_03_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_05_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0207) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_06_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_07_1"
    end
  elseif _ARG_1_ == "msg_t00305a022" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_07_1"
    end
  elseif _ARG_1_ == "msg_t00305a921" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t00305a922" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_03_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0205) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "sad")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_04_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t00305a923" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0203) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_t_npp041"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_sad", "sad")
      g_name_setuped = "msg_t_npp041"
      g_message_setuped = _ARG_1_ .. "_03_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0207) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp041"
      g_message_setuped = _ARG_1_ .. "_06_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy1", "joy")
      g_name_setuped = "msg_t_npp041"
      g_message_setuped = _ARG_1_ .. "_07_1"
    end
  elseif _ARG_1_ == "msg_t00305a924" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "sad")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "wait", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_04_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy1", "joy")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t00305a925" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0206) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t00305a926" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00305a017_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a017_01_1, 1)
  elseif _ARG_1_ == "msg_t00305a018_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a018_01_1, 1)
  elseif _ARG_1_ == "msg_t00305a022_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0203, 1)
    g_mission_information.mission_string = "msg_twn_sonic08"
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a022_01_1, 1)
  elseif _ARG_1_ == "msg_t00305a021_03_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0204, 1)
  elseif _ARG_1_ == "msg_t00305a021_06_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0207, 1)
    g_mission_information.mission_string = "msg_twn_sonic07"
  elseif _ARG_1_ == "msg_t00305a005_05_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_0202, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0203, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0204, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0206, 1)
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/sonic/a"
    g_mission_information.mission_set_default = "scripts/mission/0003/set_mission_0003a_01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "msg_t00007a056_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a056_01_1, 1)
  elseif _ARG_1_ == "msg_t00007a062_01_1" then
    SetTemporaryFlag(_ARG_0_, c_flag_talk_a062_01_1, 1)
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "dtd/sonic/a" then
    g_mission_information.mission_progress = 20
    SetGlobalFlag(_ARG_0_, 4005, 1)
    Result(_ARG_0_, "g_result_dtd")
  end
end
