g_mission_information = {
  mission_string = "msg_twn_silver16",
  mission_area = "twn/silver/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0208/set_mission_0208a.XML",
  mission_event_start = "e0217",
  mission_startup = "e0217_end",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = false,
  mission_area_text = "msg_solleanna_b",
  mission_progress = 60
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
  },
  {
    name = "msg_shop_618",
    price = 1000,
    explain = "msg_shop_303",
    event = "shop_buy_6018",
    global_flag = 6018
  },
  {
    name = "msg_shop_619",
    price = 1500,
    explain = "msg_shop_304",
    event = "shop_buy_6019",
    global_flag = 6019
  }
}
g_message_setuped = ""
g_message_icon = 0
g_result_rct = {
  stagename = "TOWN",
  id = 118,
  timebonus_base = 46000,
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
g_result_shadow = {
  stagename = "TOWN",
  id = 142,
  timebonus_base = 30000,
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
  finish = "result_shadow_end"
}
g_result_aqa = {
  stagename = "TOWN",
  id = 123,
  timebonus_base = 59000,
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
c_flag_start = 0
c_flag_2520 = c_flag_start + 1
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0210/mission_talk.lua")
script.reload("scripts/mission/0201/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t21007b851" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t21007b852" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t21007b853" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t21007b854" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t21007b855" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2504) == 0 then
      g_message_icon = c_icon_hint
    else
      g_message_icon = c_icon_chat
    end
  elseif _ARG_1_ == "msg_t21007b856" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t21007b857" then
    g_message_icon = c_icon_chat
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
  if _ARG_1_ == "msg_t21007b851" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t21007b852" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t21007b853" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t21007b854" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp019"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t21007b855" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2504) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_01_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_02_1"
    end
  elseif _ARG_1_ == "msg_t21007b856" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t21007b857" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp013"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "aqa/silver/a" and _ARG_1_ == "goto_b" then
    g_mission_information.mission_terrain = "stage/aqa/b/"
    g_mission_information.mission_area = "aqa/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0210/set_aqaB_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "me1240" then
    if GetGlobalFlag(_ARG_0_, 6018) == 1 and GetTemporaryFlag(_ARG_0_, c_flag_2520) == 0 then
      CallMission(_ARG_0_, "scripts/mission/1240/mission.lua", "1240_complete")
    end
  elseif _ARG_1_ == "1240_complete" then
    SetTemporaryFlag(_ARG_0_, c_flag_2520, 1)
    g_mission_information.mission_set_default = "scripts/mission/0210/set_mission_0210b_01.XML"
  elseif _ARG_1_ == "e0217_end" then
    g_mission_information.mission_terrain = "stage/twn/b"
    g_mission_information.mission_area = "twn/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0210/set_mission_0210b.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "goto_rct" then
    g_mission_information.mission_string = "silver_stg_rdt"
    g_mission_information.mission_terrain = "stage/rct/a"
    g_mission_information.mission_area = "rct/silver/a"
    g_mission_information.mission_set_default = "scripts/mission/0210/set_rctA_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "radicaltrain"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_rct_end" then
    PlayEvent(_ARG_0_, "e0218", "e0218_end")
  elseif _ARG_1_ == "e0218_end" then
    PlayEvent(_ARG_0_, "e1161", "e1161_end")
  elseif _ARG_1_ == "e1161_end" then
    g_mission_information.mission_string = "msg_act23"
    g_mission_information.mission_terrain = "stage/boss/charaboss2_rct/"
    g_mission_information.mission_area = "boss/silver_vs_shadow"
    g_mission_information.mission_set_default = "scripts/mission/0210/set_silver_vs_shadow.XML"
    g_mission_information.mission_path_default = "scripts/mission/0210/path_silver_vs_shadow"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    g_mission_information.mission_progress = 75
    SetGlobalFlag(_ARG_0_, 4141, 1)
    Result(_ARG_0_, "g_result_shadow")
  elseif _ARG_1_ == "result_shadow_end" then
    PlayEvent(_ARG_0_, "e0219", "e0219_end")
  elseif _ARG_1_ == "e0219_end" then
    PlayMovie(_ARG_0_, "event/e0123/e0123.sfd", "e0220_end")
  elseif _ARG_1_ == "e0220_end" then
    g_mission_information.mission_string = "silver_stg_aqa"
    g_mission_information.mission_terrain = "stage/aqa/a/"
    g_mission_information.mission_area = "aqa/silver/a"
    g_mission_information.mission_set_default = "scripts/mission/0210/set_aqaA_silver.XML"
    g_mission_information.mission_path_default = ""
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "aquaticbase"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_aqa_end" then
    PlayEvent(_ARG_0_, "e0221", "e0221_end")
  elseif _ARG_1_ == "e0221_end" then
    PlayEvent(_ARG_0_, "e0222", "e0222_end")
  elseif _ARG_1_ == "e0222_end" then
    PlayEvent(_ARG_0_, "e0223", "e0223_end")
  elseif _ARG_1_ == "e0223_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0211/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "rct/silver/a" then
    g_mission_information.mission_progress = 71
    SetGlobalFlag(_ARG_0_, 4117, 1)
    Result(_ARG_0_, "g_result_rct")
  elseif g_mission_information.mission_area == "aqa/silver/a" then
    g_mission_information.mission_progress = 82
    SetGlobalFlag(_ARG_0_, 4122, 1)
    Result(_ARG_0_, "g_result_aqa")
  elseif g_mission_information.mission_area == "aqa/silver/b" then
    g_mission_information.mission_progress = 82
    SetGlobalFlag(_ARG_0_, 4122, 1)
    Result(_ARG_0_, "g_result_aqa")
  end
end
