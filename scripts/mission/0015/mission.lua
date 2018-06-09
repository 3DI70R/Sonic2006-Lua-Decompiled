g_mission_information = {
  mission_string = "msg_twn_sonic33",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/0015/set_mission_0015a.XML",
  mission_event_start = "",
  mission_startup = "",
  mission_text = "text/msg_twn_sonic.mst",
  mission_area_text = "msg_solleanna_a",
  mission_progress = 100
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
  },
  {
    name = "msg_shop_607",
    price = 8000,
    explain = "msg_shop_108",
    event = "shop_buy_6006",
    global_flag = 6007
  },
  {
    name = "msg_shop_608",
    price = 10000,
    explain = "msg_shop_109",
    event = "shop_buy_6007",
    global_flag = 6008
  },
  {
    name = "msg_shop_609",
    price = 12000,
    explain = "msg_shop_110",
    event = "shop_buy_6008",
    global_flag = 6009
  },
  {
    name = "msg_shop_610",
    price = 14000,
    explain = "msg_shop_111",
    event = "shop_buy_6009",
    global_flag = 6010
  }
}
g_result_aqa = {
  stagename = "TOWN",
  id = 41,
  timebonus_base = 23000,
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
g_result_wyvern = {
  stagename = "TOWN",
  id = 51,
  timebonus_base = 51000,
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
  finish = "result_wyvern_end"
}
g_message_setuped = ""
g_message_icon = 0
g_name_setuped = ""
c_flag_start = 0
c_flag_0903 = c_flag_start + 1
c_flag_0915 = c_flag_start + 2
c_flag_0905 = c_flag_start + 3
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0015/mission_talk.lua")
script.reload("scripts/mission/0001/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t01410a021" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01410a992" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01410a993" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01410a994" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01410a995" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t01410a996" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01410a997" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01410a998" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t01410a999" then
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
      g_mission_information.mission_set_default = "scripts/mission/0015/set_mission_0015b.XML"
      g_mission_information.mission_is_battle = false
      g_mission_information.mission_area_text = "msg_solleanna_b"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif _ARG_1_ == "goto_c" then
      g_mission_information.mission_terrain = "stage/twn/c/"
      g_mission_information.mission_area = "twn/sonic/c"
      g_mission_information.mission_set_default = "scripts/mission/0015/set_mission_0015c.XML"
      g_mission_information.mission_is_battle = false
      g_mission_information.mission_area_text = "msg_solleanna_c"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/sonic/b" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0015/set_mission_0015a.XML"
      g_mission_information.mission_is_battle = false
      g_mission_information.mission_area_text = "msg_solleanna_a"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "twn/sonic/c" then
    if _ARG_1_ == "goto_a" then
      g_mission_information.mission_terrain = "stage/twn/a/"
      g_mission_information.mission_area = "twn/sonic/a"
      g_mission_information.mission_set_default = "scripts/mission/0015/set_mission_0015a.XML"
      g_mission_information.mission_is_battle = false
      g_mission_information.mission_area_text = "msg_solleanna_a"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  elseif g_mission_information.mission_area == "aqa/sonic/a" then
    g_mission_information.mission_terrain = "stage/aqa/b/"
    g_mission_information.mission_area = "aqa/sonic/b"
    g_mission_information.mission_set_default = "placement/aqa/set_aqaB_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "goto_aqa" then
    g_mission_information.mission_string = "sonic_stg_aqa"
    g_mission_information.mission_terrain = "stage/aqa/a/"
    g_mission_information.mission_area = "aqa/sonic/a"
    g_mission_information.mission_set_default = "placement/aqa/set_aqaA_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0028_end" then
    PlayEvent(_ARG_0_, "e0029", "e0029_end")
  elseif _ARG_1_ == "e0029_end" then
    PlayEvent(_ARG_0_, "e1111", "e1111_end")
  elseif _ARG_1_ == "e1111_end" then
    g_mission_information.mission_string = "msg_act17"
    g_mission_information.mission_terrain = "stage/boss/dr3_eggcarrier/"
    g_mission_information.mission_area = "eWyvern_sonic"
    g_mission_information.mission_set_default = "placement/boss/dr3/set_ewyvern_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0030_movie_end" then
    SetGlobalFlag(_ARG_0_, 4145, 1)
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1112", "e1112_end")
  elseif _ARG_1_ == "e1112_end" then
    SetGlobalFlag(_ARG_0_, 4050, 1)
    Result(_ARG_0_, "g_result_wyvern")
  elseif _ARG_1_ == "result_wyvern_end" then
    PlayMovie(_ARG_0_, "event/e0030/e0030.sfd", "e0030_movie_end")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_c" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_aqa_end" then
    PlayEvent(_ARG_0_, "e0028", "e0028_end")
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
  if _ARG_1_ == "msg_t01410a021" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk_joy", "joy")
      g_name_setuped = "msg_t_npp039"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a992" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "surprise")
      g_name_setuped = "msg_t_npp008"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a993" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp002"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a994" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "joy")
      g_name_setuped = "msg_t_npp009"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk2", "joy")
      g_name_setuped = "msg_t_npp009"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a995" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp007"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a996" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a997" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  elseif _ARG_1_ == "msg_t01410a998" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_03_1"
  elseif _ARG_1_ == "msg_t01410a999" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0905) == 0 then
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_03_1"
    else
      SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
      g_name_setuped = "msg_t_npp033"
      g_message_setuped = _ARG_1_ .. "_05_1"
    end
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "aqa/sonic/b" then
    SetGlobalFlag(_ARG_0_, 4040, 1)
    Result(_ARG_0_, "g_result_aqa")
  end
end
