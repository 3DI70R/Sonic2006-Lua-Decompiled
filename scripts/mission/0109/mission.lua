g_mission_information = {
  mission_string = "msg_m1131_title031_01_1",
  mission_area = "twn/shadow/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1131/set_mission_1131_01.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = true,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 82,
  mission_disappear_people = true,
  mission_bgm = "twn_mission_fast"
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
    name = "msg_shop_612",
    price = 100,
    explain = "msg_shop_201",
    event = "shop_buy_6012",
    global_flag = 6012
  },
  {
    name = "msg_shop_613",
    price = 500,
    explain = "msg_shop_202",
    event = "shop_buy_6013",
    global_flag = 6013
  },
  {
    name = "msg_shop_614",
    price = 6000,
    explain = "msg_shop_203",
    event = "shop_buy_6014",
    global_flag = 6014
  },
  {
    name = "msg_shop_615",
    price = 10000,
    explain = "msg_shop_204",
    event = "shop_buy_6015",
    global_flag = 6015
  }
}
g_result_1131 = {
  id = 180,
  stagename = "TOWN",
  timebonus_base = 27500,
  timebonus_rate = 100,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 27500,
  rank_b = 25000,
  rank_c = 22500,
  rank_d = 0,
  ringbonus_s = 1000,
  ringbonus_a = 500,
  ringbonus_b = 300,
  ringbonus_c = 200,
  ringbonus_d = 100,
  finish = "result_1131_end"
}
g_result_dtd = {
  stagename = "TOWN",
  id = 87,
  timebonus_base = 49000,
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
  finish = "result_dtd_end"
}
g_result_mefiress = {
  stagename = "TOWN",
  id = 97,
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
  finish = "result_mefiress_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_msg_t10909a742_02_1 = c_flag_start + 0
c_flag_1902 = c_flag_start + 1
c_flag_1905 = c_flag_start + 2
c_flag_1907 = c_flag_start + 3
c_flag_mission_start = c_flag_start + 4
c_flag_mission_success = c_flag_start + 5
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0109/mission_talk.lua")
script.reload("scripts/mission/0101/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t10909a021" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10909a748" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t10909a749" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_m1131_131" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      g_message_icon = c_icon_mission
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_mission
    end
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
  if _ARG_1_ == "msg_t10909a021" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp039"
    g_message_setuped = _ARG_1_ .. "_08_1"
  elseif _ARG_1_ == "msg_t10909a748" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_08_1"
  elseif _ARG_1_ == "msg_t10909a749" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_08_1"
  elseif _ARG_1_ == "msg_m1131_131" then
    if GetTemporaryFlag(_ARG_0_, c_flag_mission_start) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "sad")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_mission_success) == 1 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "joy")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_2"
    else
      SetAnimationTalkWith(_ARG_0_, "damage_furafura", "sad")
      g_name_setuped = "msg_m1131_n131"
      g_message_setuped = _ARG_1_ .. "_01_3"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0109/set_mission_0109a.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "twn/shadow/a" then
    if _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/0109/set_mission_0109b.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_scene" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1131/set_mission_1131_01.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_mission_end" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/1131/set_mission_1131_00.XML"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "dtd/shadow/a" then
    g_mission_information.mission_terrain = "stage/dtd/b/"
    g_mission_information.mission_area = "dtd/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0109/set_dtd_b_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me1905" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1905) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_1905, 1)
      CallMission(_ARG_0_, "scripts/mission/1129/mission.lua")
    end
  elseif _ARG_1_ == "me1907" then
  elseif _ARG_1_ == "1131_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_1907, 1)
    g_mission_information.mission_string = "msg_twn_shadow26"
  elseif _ARG_1_ == "goto_dtd" then
    PlayEvent(_ARG_0_, "e0128", "e0128_end")
  elseif _ARG_1_ == "e0128_end" then
    g_mission_information.mission_string = "shadow_stg_dtd"
    g_mission_information.mission_terrain = "stage/dtd/a/"
    g_mission_information.mission_area = "dtd/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0109/set_dtd_a_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "dustydesert"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0129_end" then
    PlayEvent(_ARG_0_, "e1061", "e1061_end")
  elseif _ARG_1_ == "e1061_end" then
    g_mission_information.mission_string = "msg_act20"
    g_mission_information.mission_terrain = "stage/boss/secondmefiress_dtd/"
    g_mission_information.mission_area = "secondmefiress_shadow"
    g_mission_information.mission_set_default = "scripts/mission/0109/set_secondmefiress_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "mephiles"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1062", "e1062_end")
  elseif _ARG_1_ == "e1062_end" then
    g_mission_information.mission_progress = 100
    SetGlobalFlag(_ARG_0_, 4096, 1)
    SetGlobalFlag(_ARG_0_, 4146, 1)
    Result(_ARG_0_, "g_result_mefiress")
  elseif _ARG_1_ == "e0130_end" then
    g_mission_information.mission_progress = 100
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_dtd_end" then
    PlayEvent(_ARG_0_, "e0129", "e0129_end")
  elseif _ARG_1_ == "result_mefiress_end" then
    PlayMovie(_ARG_0_, "event/e0130/e0130.sfd", "e0130_end")
  elseif _ARG_1_ == "d1131" then
    SetTemporaryFlag(_ARG_0_, c_flag_mission_success, 1)
    on_goto(_ARG_0_, "goto_mission_end")
  elseif _ARG_1_ == "FAILD_FLAG" then
    MissionClear(_ARG_0_, "failed")
  elseif _ARG_1_ == "result_1131_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_1907, 1)
    g_mission_information.mission_string = "msg_twn_shadow26"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_set_default = "scripts/mission/0109/set_mission_0109a.XML"
    g_mission_information.mission_is_battle = false
    g_mission_information.mission_area_text = "msg_solleanna_a"
    g_mission_information.mission_disappear_people = false
    g_mission_information.mission_bgm = ""
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "rule" then
    OpenWindow(_ARG_0_, "msg_m1131_rule031_01_1")
    SetTemporaryFlag(_ARG_0_, c_flag_mission_start, 1)
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_m1131_131_01_2" then
    SetGlobalFlag(_ARG_0_, 1131, 1)
    Result(_ARG_0_, "g_result_1131")
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "dtd/shadow/b" then
    g_mission_information.mission_progress = 95
    SetGlobalFlag(_ARG_0_, 4086, 1)
    Result(_ARG_0_, "g_result_dtd")
  end
end
