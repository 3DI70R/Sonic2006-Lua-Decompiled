g_mission_information = {
  mission_string = "msg_twn_shadow13",
  mission_area = "twn/shadow/b",
  mission_terrain = "stage/twn/b/",
  mission_set_default = "scripts/mission/0105/set_mission_0105b.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_text = "text/msg_twn_shadow.mst",
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
  }
}
g_result_rct = {
  stagename = "TOWN",
  id = 72,
  timebonus_base = 43000,
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
g_result_chara = {
  stagename = "TOWN",
  id = 96,
  timebonus_base = 24000,
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
  finish = "result_chara_end"
}
g_result_aqa = {
  stagename = "TOWN",
  id = 77,
  timebonus_base = 33000,
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
  finish = "result_aqa_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_1503 = c_flag_start + 0
c_flag_1506 = c_flag_start + 1
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0105/mission_talk.lua")
script.reload("scripts/mission/0101/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t00707b952" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b953" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t00707b954" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10507b721" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10507b722" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10507b723" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10507b726" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10507b727" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10507b728" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_chat
    else
      g_message_icon = c_icon_hint
    end
  elseif _ARG_1_ == "msg_t10507b729" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t10507b730" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      g_message_icon = c_icon_chat
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
  if _ARG_1_ == "msg_t00707b952" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp017"
    g_message_setuped = _ARG_1_ .. "_06_1"
  elseif _ARG_1_ == "msg_t00707b953" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_06_1"
  elseif _ARG_1_ == "msg_t00707b954" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_06_1"
  elseif _ARG_1_ == "msg_t10507b721" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10507b722" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10507b723" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp017"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp017"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10507b726" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10507b727" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp019"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10507b728" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp018"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
      g_name_setuped = "msg_t_npp018"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10507b729" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk_pointf", "joy")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_aseri", "surprise")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  elseif _ARG_1_ == "msg_t10507b730" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp009"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp009"
      g_message_setuped = _ARG_1_ .. "_06_1"
    end
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "twn/shadow/b" then
    g_mission_information.mission_terrain = "stage/twn/a/"
    g_mission_information.mission_area = "twn/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_mission_0105a.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "twn/shadow/a" then
    g_mission_information.mission_terrain = "stage/twn/b/"
    g_mission_information.mission_area = "twn/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_mission_0105b.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "rct/shadow/a" then
    g_mission_information.mission_terrain = "stage/rct/b/"
    g_mission_information.mission_area = "rct/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_rctB_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "aqa/shadow/a" then
    g_mission_information.mission_terrain = "stage/aqa/b/"
    g_mission_information.mission_area = "aqa/shadow/b"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_aqaB_shadow.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me1502" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
      PlayEvent(_ARG_0_, "e0119", "e0119_end")
      SetTemporaryFlag(_ARG_0_, c_flag_1503, 1)
      g_mission_information.mission_string = ""
      g_mission_information.mission_set_default = "scripts/mission/0105/set_mission_0105b_02.XML"
    end
  elseif _ARG_1_ == "me1504" then
  elseif _ARG_1_ == "e0119_end" then
    g_mission_information.mission_string = "msg_twn_shadow15"
  elseif _ARG_1_ == "me1507" then
    if GetTemporaryFlag(_ARG_0_, c_flag_1503) == 0 then
    else
      OpenWindow(_ARG_0_, "msg_t10507b722_01_1")
    end
  elseif _ARG_1_ == "goto_rct" then
    g_mission_information.mission_string = "shadow_stg_rdt"
    g_mission_information.mission_terrain = "stage/rct/a/"
    g_mission_information.mission_area = "rct/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_rctA_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "radicaltrain"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0120_end" then
    PlayEvent(_ARG_0_, "e0121", "e0121_end")
  elseif _ARG_1_ == "e0121_end" then
    PlayEvent(_ARG_0_, "e1171", "e1171_end")
  elseif _ARG_1_ == "e1171_end" then
    g_mission_information.mission_string = "msg_act24"
    g_mission_information.mission_terrain = "stage/boss/charaboss2_rct/"
    g_mission_information.mission_area = "boss/shadow_vs_silver"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_shadow_vs_silver.XML"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    g_mission_information.mission_progress = 68
    SetGlobalFlag(_ARG_0_, 4095, 1)
    Result(_ARG_0_, "g_result_chara")
  elseif _ARG_1_ == "e0122_end" then
    PlayMovie(_ARG_0_, "event/e0123/e0123.sfd", "e0123_end")
  elseif _ARG_1_ == "e0123_end" then
    g_mission_information.mission_string = "shadow_stg_aqa"
    g_mission_information.mission_terrain = "stage/aqa/a/"
    g_mission_information.mission_area = "aqa/shadow/a"
    g_mission_information.mission_set_default = "scripts/mission/0105/set_aqaA_shadow.XML"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "aquaticbase"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0124_end" then
    PlayEvent(_ARG_0_, "e0125", "e0125_end")
  elseif _ARG_1_ == "e0125_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0107/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_rct_end" then
    PlayEvent(_ARG_0_, "e0120", "e0120_end")
  elseif _ARG_1_ == "result_chara_end" then
    PlayEvent(_ARG_0_, "e0122", "e0122_end")
  elseif _ARG_1_ == "result_aqa_end" then
    PlayMovie(_ARG_0_, "event/e0124/e0124.wmv", "e0124_end")
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
  if g_mission_information.mission_area == "rct/shadow/b" then
    g_mission_information.mission_progress = 61
    SetGlobalFlag(_ARG_0_, 4071, 1)
    Result(_ARG_0_, "g_result_rct")
  elseif g_mission_information.mission_area == "aqa/shadow/a" then
    SetGlobalFlag(_ARG_0_, 4076, 1)
    Result(_ARG_0_, "g_result_aqa")
  elseif g_mission_information.mission_area == "aqa/shadow/b" then
    g_mission_information.mission_progress = 72
    SetGlobalFlag(_ARG_0_, 4076, 1)
    Result(_ARG_0_, "g_result_aqa")
  end
end
