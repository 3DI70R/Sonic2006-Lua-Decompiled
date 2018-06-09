g_mission_information = {
  mission_string = "silver_stg_csc",
  mission_area = "csc/silver/f1",
  mission_terrain = "stage/csc/f/",
  mission_set_default = "scripts/mission/0201/set_cscF1_silver.XML",
  mission_movie_start = "event/e0200/e0200.sfd",
  mission_startup = "e0200_end",
  mission_text = "text/msg_twn_silver.mst",
  mission_is_battle = true,
  mission_area_text = "crisiscity",
  mission_progress = 0
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
g_result_csc = {
  stagename = "TOWN",
  id = 98,
  timebonus_base = 57000,
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
  finish = "result_csc_end"
}
g_result_iblis = {
  stagename = "TOWN",
  id = 139,
  timebonus_base = 34000,
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
  finish = "result_iblis_end"
}
g_result_tpj = {
  stagename = "TOWN",
  id = 103,
  timebonus_base = 46000,
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
  finish = "result_tpj_end"
}
g_result_wvo = {
  stagename = "TOWN",
  id = 138,
  timebonus_base = 50000,
  timebonus_rate = 40,
  ringbonus_rate = 100,
  rank_s = 30000,
  rank_a = 20000,
  rank_b = 10000,
  rank_c = 5000,
  rank_d = 0,
  ringbonus_s = 3000,
  ringbonus_a = 2000,
  ringbonus_b = 1000,
  ringbonus_c = 500,
  ringbonus_d = 200,
  finish = "result_wvo_end"
}
c_flag_start = 0
c_flag_2111 = c_flag_start + 0
c_flag_2112 = c_flag_start + 1
c_flag_2113 = c_flag_start + 2
c_icon_chat = 0
c_icon_hint = 1
c_icon_mission = 3
script.reload("scripts/mission/0201/mission_talk.lua")
script.reload("scripts/mission/0201/mission_man.lua")
function main(_ARG_0_)
end
function on_talk_icon(_ARG_0_, _ARG_1_)
  if missionman_talk_icon(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t10307c713" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t10307c714" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20102c801" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20102c802" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20102c803" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20102c804" then
    g_message_icon = c_icon_hint
  elseif _ARG_1_ == "msg_t20102c805" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20102c806" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20102c807" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20102c808" then
    g_message_icon = c_icon_chat
  elseif _ARG_1_ == "msg_t20102c809" then
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
  if _ARG_1_ == "msg_t10307c713" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t10307c714" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c801" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp003"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c802" then
    SetAnimationTalkWith(_ARG_0_, "talk_pointf", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c803" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c804" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp010"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c805" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c806" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp007"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c807" then
    SetAnimationTalkWith(_ARG_0_, "talk2", "normal")
    g_name_setuped = "msg_t_npp012"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c808" then
    SetAnimationTalkWith(_ARG_0_, "talk0", "normal")
    g_name_setuped = "msg_t_npp009"
    g_message_setuped = _ARG_1_ .. "_01_1"
  elseif _ARG_1_ == "msg_t20102c809" then
    SetAnimationTalkWith(_ARG_0_, "talk1", "normal")
    g_name_setuped = "msg_t_npp002"
    g_message_setuped = _ARG_1_ .. "_01_1"
  end
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "csc/silver/b" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "csc/silver/f2"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_cscF2_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscF_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if missionman_event(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "e0200_end" then
    g_mission_information.mission_terrain = "stage/csc/f/"
    g_mission_information.mission_area = "csc/silver/f1"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_cscF1_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscF1_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_movie_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "BtoF" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "BtoF2" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_csc_end" then
    PlayEvent(_ARG_0_, "e0201", "e0201_end")
  elseif _ARG_1_ == "e0201_end" then
    PlayEvent(_ARG_0_, "e1001", "e1001_end")
  elseif _ARG_1_ == "e1001_end" then
    g_mission_information.mission_string = "msg_act16"
    g_mission_information.mission_terrain = "stage/csc/iblis01/"
    g_mission_information.mission_area = "iblis01"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_iblis01_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_iblis01_silver"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "iblis"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "boss_is_dead" then
    PlayEvent(_ARG_0_, "e1002", "e1002_end")
  elseif _ARG_1_ == "e1002_end" then
    g_mission_information.mission_progress = 7
    SetGlobalFlag(_ARG_0_, 4138, 1)
    Result(_ARG_0_, "g_result_iblis")
  elseif _ARG_1_ == "result_iblis_end" then
    PlayEvent(_ARG_0_, "e0202", "e0202_end")
  elseif _ARG_1_ == "e0202_end" then
    PlayEvent(_ARG_0_, "e0203", "e0203_end")
  elseif _ARG_1_ == "e0203_end" then
    PlayEvent(_ARG_0_, "e0204", "e0204_end")
  elseif _ARG_1_ == "e0204_end" then
    g_mission_information.mission_string = "msg_twn_silver01"
    g_mission_information.mission_terrain = "stage/twn/c"
    g_mission_information.mission_area = "twn/silver/c"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_mission_0201c.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_twnC_silver"
    g_mission_information.mission_is_battle = false
    g_mission_information.mission_area_text = "msg_solleanna_c"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "me2001" then
    SetTemporaryFlag(_ARG_0_, c_flag_2113, 1)
  elseif _ARG_1_ == "goto_tpj" then
    g_mission_information.mission_string = "silver_stg_tpj"
    g_mission_information.mission_terrain = "stage/tpj/c/"
    g_mission_information.mission_area = "tpj/silver/c"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_tpjC_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_tpjC_silver"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "tropicaljungle"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_tpj_end" then
    PlayEvent(_ARG_0_, "e0205", "e0205_end")
  elseif _ARG_1_ == "e0205_end" then
    g_mission_information.mission_string = "silver_stg_wvo_blz"
    g_mission_information.mission_terrain = "stage/wvo/a/"
    g_mission_information.mission_area = "wvo/silver/a"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_wvoA_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/wvo_s_a"
    g_mission_information.mission_is_battle = true
    g_mission_information.mission_area_text = "waveocean"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "result_wvo_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0202/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "F1toB" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_cscB_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscB_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_talk_close(_ARG_0_, _ARG_1_)
  if missionman_talk_close(_ARG_0_, _ARG_1_) == true then
    return
  end
  if _ARG_1_ == "msg_t20102c801_01_1" then
    if GetTemporaryFlag(_ARG_0_, c_flag_2111) == 0 then
      SetTemporaryFlag(_ARG_0_, c_flag_2111, 1)
      g_mission_information.mission_string = "msg_twn_silver02"
    end
  elseif _ARG_1_ == "msg_t20102c803_01_1" and GetTemporaryFlag(_ARG_0_, c_flag_2111) == 0 then
    SetTemporaryFlag(_ARG_0_, c_flag_2111, 1)
    g_mission_information.mission_string = "msg_twn_silver02"
  end
end
function on_goal(_ARG_0_)
  if g_mission_information.mission_area == "csc/silver/f1" then
    g_mission_information.mission_terrain = "stage/csc/b/"
    g_mission_information.mission_area = "csc/silver/b"
    g_mission_information.mission_set_default = "scripts/mission/0201/set_cscB_silver.XML"
    g_mission_information.mission_path_default = "scripts/mission/0201/path_cscB_silver"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif g_mission_information.mission_area == "csc/silver/f2" then
    g_mission_information.mission_progress = 5
    SetGlobalFlag(_ARG_0_, 4097, 1)
    Result(_ARG_0_, "g_result_csc")
  elseif g_mission_information.mission_area == "tpj/silver/c" then
    g_mission_information.mission_area_text = "waveocean"
    g_mission_information.mission_progress = 14
    SetGlobalFlag(_ARG_0_, 4102, 1)
    Result(_ARG_0_, "g_result_tpj")
  elseif g_mission_information.mission_area == "wvo/silver/a" then
    g_mission_information.mission_area_text = "msg_solleanna_a"
    g_mission_information.mission_progress = 19
    SetGlobalFlag(_ARG_0_, 4137, 1)
    Result(_ARG_0_, "g_result_wvo")
  end
end
