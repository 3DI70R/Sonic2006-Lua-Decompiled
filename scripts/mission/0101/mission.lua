g_mission_information = {
  mission_string = "shadow_stg_wap",
  mission_area = "wap/shadow/a",
  mission_terrain = "stage/wap/a/",
  mission_set_default = "scripts/mission/0101/set_wap_a_shadow.XML",
  mission_movie_start = "event/e0100/e0100.sfd",
  mission_startup = "e0100_end",
  mission_text = "text/msg_twn_shadow.mst",
  mission_path_default = "",
  mission_is_battle = true,
  mission_area_text = "whiteacropolis",
  mission_progress = 0
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
g_result_wap = {
  stagename = "TOWN",
  id = 52,
  timebonus_base = 30000,
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
g_result_cerberus = {
  stagename = "TOWN",
  id = 93,
  timebonus_base = 32000,
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
g_result_kdv = {
  stagename = "TOWN",
  id = 57,
  timebonus_base = 55000,
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
  finish = "result_kdv_end"
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
  }
}
c_flag_start = 0
c_flag_playevent_e0100 = c_flag_start + 0
c_flag_1111 = c_flag_start + 1
c_flag_1113 = c_flag_start + 2
c_flag_1114 = c_flag_start + 3
c_flag_1116 = c_flag_start + 4
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0101/mission_talk.lua")
script.reload("scripts/mission/0101/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e43_rg" then
    if GetGlobalFlag(_ARG_0_, 6012) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_e44_rg"
    end
  elseif _ARG_1_ == "hint_twn01_h08_so" then
    if GetGlobalFlag(_ARG_0_, 6013) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_h09_so"
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t10101b701" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101b702" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101b703" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101b704" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101b705" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101b708" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10101c407" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t10101c408" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t10101c706" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1116) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10101c707" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1116) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
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
  if _ARG_1_ == "msg_t10101b701" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101b702" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101b703" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp013"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101b704" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101b705" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp008"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101b708" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101c407" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp035"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101c408" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp030"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10101c706" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1116) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp015"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp015"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  elseif _ARG_1_ == "msg_t10101c707" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1116) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp010"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp010"
      g_message_setuped = _ARG_1_ .. "_08_1"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "wap/shadow/a" then
    g_mission_information.mission_terrain = "stage/wap/b/"
    g_mission_information.mission_area = "wap/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_wap_b_shadow.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "twn/shadow/b" then
    if _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/shadow/c"
      g_mission_information.mission_set_default = "scripts/mission/0101/set_mission_0101c.XML"
      g_mission_information.mission_path_default = "scripts/mission/0101/set_mission_0101c"
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
      g_mission_information.mission_area_text = "msg_solleanna_c"
    end
  elseif g_mission_information.mission_area == "twn/shadow/c" then
    if _ARG_1_ == "goto_b" then
      g_mission_information.mission_terrain = "stage/twn/b/"
      g_mission_information.mission_area = "twn/shadow/b"
      g_mission_information.mission_set_default = "scripts/mission/0101/set_mission_0101b.XML"
      g_mission_information.mission_path_default = ""
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_kdv" then
      g_mission_information.mission_terrain = "stage/kdv/a/"
      g_mission_information.mission_area = "kdv/shadow/a"
      g_mission_information.mission_set_default = "scripts/mission/0101/set_kdv_a_shadow.XML"
      g_mission_information.mission_path_default = ""
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "kdv/shadow/a" then
    g_mission_information.mission_terrain = "stage/kdv/d/"
    g_mission_information.mission_area = "kdv/shadow/d"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_kdv_d_shadow.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "kdv/shadow/d" then
    g_mission_information.mission_terrain = "stage/kdv/b/"
    g_mission_information.mission_area = "kdv/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_kdv_b_shadow.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me1111" then
    if GetGlobalFlag(_ARG_0_, 6012) == 0 then
      OpenWindow(_ARG_0_, "msg_t10101b701_01_1")
      SetTemporaryFlag(_ARG_0_, c_flag_1111, 1)
    else
      OpenWindow(_ARG_0_, "msg_t10101b702_01_1")
      SetTemporaryFlag(_ARG_0_, c_flag_1113, 1)
    end
  elseif _ARG_1_ == "me1114" then
    SetTemporaryFlag(_ARG_0_, c_flag_1114, 1)
  elseif _ARG_1_ == "d1116" then
    SetTemporaryFlag(_ARG_0_, c_flag_1116, 1)
  elseif _ARG_1_ == "e0100_end" then
    g_mission_information.mission_terrain = "stage/wap/a/"
    g_mission_information.mission_area = "wap/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_wap_a_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_movie_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "wap_all_destroy" then
    g_mission_information.mission_progress = 5
    g_mission_information.mission_area_text = "eggcerberus"
    SetGlobalFlag(_ARG_0_, 4051, 1)
    Result(_ARG_0_, "g_result_wap")
  elseif _ARG_1_ == "result_wap_end" then
    PlayEvent(_ARG_0_, "e0102", "e0102_end")
  elseif _ARG_1_ == "e0102_end" then
    PlayEvent(_ARG_0_, "e1081", "e1081_end")
  elseif _ARG_1_ == "e1081_end" then
    g_mission_information.mission_string = "msg_act28"
    g_mission_information.mission_terrain = "stage/boss/dr1_wap/"
    g_mission_information.mission_area = "eCerberus_shadow"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_eCerberus_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1082", "e1082_end")
  elseif _ARG_1_ == "e1082_end" then
    g_mission_information.mission_progress = 7
    g_mission_information.mission_area_text = "whiteacropolis"
    SetGlobalFlag(_ARG_0_, 4092, 1)
    Result(_ARG_0_, "g_result_cerberus")
  elseif _ARG_1_ == "result_cerberus_end" then
    PlayEvent(_ARG_0_, "e0103", "e0103_end")
  elseif _ARG_1_ == "e0103_end" then
    g_mission_information.mission_string = "msg_twn_shadow02"
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0101/set_mission_0101b.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "msg_solleanna_b"
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_d" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_kdv" then
    g_mission_information.mission_string = "shadow_stg_kdv"
    g_mission_information.mission_area_text = "kingdomvalley"
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_kdv_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0102/mission.lua")
    MissionClear(_ARG_0_, "complete")
  end
end
function on_talk_open(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "kdv/shadow/b" then
    g_mission_information.mission_progress = 19
    SetGlobalFlag(_ARG_0_, 4056, 1)
    Result(_ARG_0_, "g_result_kdv")
  end
end
