g_mission_information = {
  mission_string = "",
  mission_area = "twn/shadow/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0107/set_mission_0107a.XML",
  mission_event_start = "e0126",
  mission_startup = "e0126_end",
  mission_text = "text/msg_twn_shadow.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_a",
  mission_progress = 72
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
g_result_wvo = {
  stagename = "TOWN",
  id = 82,
  timebonus_base = 37000,
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
c_flag_start = 0
c_flag_1703 = c_flag_start + 0
c_flag_1706 = c_flag_start + 1
c_flag_1707 = c_flag_start + 2
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0107/mission_talk.lua")
script.reload("scripts/mission/0101/mission_man.lua")
function main(_ARG_0_)
end
function on_hint(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "hint_twn01_e50_gn" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1706) == 0 then
      g_message_setuped = _ARG_1_
    else
      g_message_setuped = ""
    end
  else
    g_message_setuped = _ARG_1_
  end
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t10708a407" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10708a732" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t10708a733" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1706) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10708a734" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10708a735" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10708a736" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10708a737" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10708a738" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10708a747" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t10708a748" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t10708a749" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t10708a750" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_hint
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
  if _ARG_1_ == "msg_t10708a407" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp035"
      g_message_setuped = _ARG_1_ .. "_05_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp035"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10708a732" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_05_1"
  elseif _ARG_1_ == "msg_t10708a733" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1706) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "surpise")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t10708a734" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10708a735" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp013"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10708a736" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10708a737" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10708a738" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10708a747" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10708a748" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp003"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10708a749" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp012"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10708a750" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1707) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp013"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp013"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0107/set_mission_0108a01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "twn/shadow/a" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0107/set_mission_0108b01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "wvo/shadow/b" then
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "wvo/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0107/set_wvoA_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "e0126_end" then
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
    g_mission_information.mission_string = "msg_twn_shadow16"
  elseif _ARG_1_ == "me1703" then
  elseif _ARG_1_ == "me1705" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1706) == 0 then
      CallMission(_ARG_0_, "scripts/mission/1132/mission.lua", "1132_complete")
    end
  elseif _ARG_1_ == "1132_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_1706, 1)
    g_mission_information.mission_string = "msg_twn_shadow20"
  elseif _ARG_1_ == "d1707" then
    SetTemporaryFlag(_ARG_0_, c_flag_1707, 1)
    g_mission_information.mission_string = "msg_twn_shadow22"
  elseif _ARG_1_ == "me1708" then
    OpenWindow(_ARG_0_, "msg_t10708a734_01_1")
  elseif _ARG_1_ == "goto_wvo" then
    g_mission_information.mission_string = "shadow_stg_wvo"
    g_mission_information.mission_terrain = "stage/wvo/b/"
    g_mission_information.mission_area = "wvo/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0107/set_wvoB_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "waveocean"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0127_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0109/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_wvo_end" then
    PlayEvent(_ARG_0_, "e0127", "e0127_end")
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
  if g_mission_information.mission_area == "wvo/shadow/a" then
    g_mission_information.mission_progress = 82
    SetGlobalFlag(_ARG_0_, 4081, 1)
    Result(_ARG_0_, "g_result_wvo")
  end
end
