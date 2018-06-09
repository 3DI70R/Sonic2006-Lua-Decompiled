g_mission_information = {
  mission_string = "msg_twn_silver05",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0202/set_mission_0202a.XML",
  mission_event_start = "e0206",
  mission_startup = "e0206_end",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 19
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
  }
}
g_result_dtd = {
  stagename = "TOWN",
  id = 108,
  timebonus_base = 64000,
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
c_flag_start = 0
c_flag_2203 = c_flag_start + 1
c_flag_2204 = c_flag_start + 2
c_flag_2205 = c_flag_start + 3
c_flag_2206 = c_flag_start + 4
c_flag_2207 = c_flag_start + 5
c_flag_2211 = c_flag_start + 6
c_flag_2212 = c_flag_start + 7
c_flag_2213 = c_flag_start + 8
c_flag_2216 = c_flag_start + 9
c_flag_2217 = c_flag_start + 10
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0202/mission_talk.lua")
script.reload("scripts/mission/0201/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_a04_sv" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2203) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = "hint_twn01_e22_am"
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t20205a023" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a811" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a813" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_chat
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a814" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a815" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a816" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a817" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a824" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205a825" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      g_message_icon = c_icon_hint
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t20205c021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_message_icon = c_icon_mission
    else
      g_message_icon = c_icon_hint
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
  if _ARG_1_ == "msg_t20205a023" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a811" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a813" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a814" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a815" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp022"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a816" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a817" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp010"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp010"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205a824" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t20205a825" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_01_1"
    elseif GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  elseif _ARG_1_ == "msg_t20205c021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_15_1"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/silver/a" then
    if _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c"
      g_mission_information.mission_area = "twn/silver/c"
      g_mission_information.mission_set_default = "scripts/mission/0202/set_mission_0202c.XML"
      g_mission_information.mission_path_default = ""
      g_mission_information.mission_is_battle = false
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/silver/c" and _ARG_1_ == "goto_a" then
    g_mission_information.mission_terrain = "stage/twn/a"
    g_mission_information.mission_area = "twn/silver/a"
    if GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
      g_mission_information.mission_set_default = "scripts/mission/0202/set_mission_0202a.XML"
    else
      g_mission_information.mission_set_default = "scripts/mission/0202/set_mission_0202a_02.XML"
    end
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "e0206_end" then
    g_mission_information.mission_terrain = "stage/twn/a"
    g_mission_information.mission_area = "twn/silver/a"
    g_mission_information.mission_set_default = "scripts/mission/0202/set_mission_0202a.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "goto_dtd" then
    PlayEvent(_ARG_0_, "e0207", "e0207_end")
  elseif _ARG_1_ == "e0207_end" then
    g_mission_information.mission_string = "silver_stg_dtd"
    g_mission_information.mission_terrain = "stage/dtd/b/"
    g_mission_information.mission_area = "dtd/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0202/set_dtd_b_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0202/dtd_s_b"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "dustydesert"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_dtd_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0203/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "1221_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2204, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_2216, 1)
    g_mission_information.mission_set_default = "scripts/mission/0202/set_mission_0202a_02.XML"
    g_mission_information.mission_string = "msg_twn_silver06"
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t20205a811_01_1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2203) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_2203, 1)
      g_mission_information.mission_string = "msg_twn_silver06"
    end
  elseif _ARG_1_ == "msg_t20205a023_01_1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2204) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_2204, 1)
      g_mission_information.mission_string = "msg_twn_silver07"
    end
  elseif _ARG_1_ == "msg_t20205c021_01_1" and GetTemporaryFlag(_ARG_0_, c_flag_2216) == 0 then
    CallMission(_ARG_0_, "scripts/mission/1221/mission.lua", "1221_complete")
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "dtd/silver/a" then
    g_mission_information.mission_terrain = "stage/dtd/b/"
    g_mission_information.mission_area = "dtd/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0202/set_dtd_b_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0202/dtd_s_b"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "dtd/silver/b" then
    g_mission_information.mission_area_text = "msg_solleanna_a"
    g_mission_information.mission_progress = 32
    SetGlobalFlag(_ARG_0_, 4107, 1)
    Result(_ARG_0_, "g_result_dtd")
  end
end
