g_mission_information = {
  mission_string = "msg_act27",
  mission_area = "twn/sonic/c",
  mission_terrain = "stage/twn/c/",
  mission_set_default = "scripts/mission/0008/set_mission_0008c_01.XML",
  mission_event_start = "e0018",
  mission_startup = "e0018_end",
  mission_text = "text/msg_twn_sonic.mst",
  mission_is_battle = false,
  mission_area_text = "egggenesis",
  mission_progress = 62
}
g_shop = {
  {
    message_first = "msg_shop_003",
    message_agree = "msg_shop_005",
    message_buy_item = "msg_shop_006",
    message_cancel_item = "msg_shop_007",
    message_second = "msg_shop_007",
    message_no_money = "msg_shop_008",
    message_end = "msg_shop_012"
  },
  {
    name = "msg_shop_429",
    price = 5,
    explain = "msg_shop_103",
    event = "shop_buy_0000"
  }
}
g_result_genesis = {
  stagename = "TOWN",
  id = 50,
  timebonus_base = 28000,
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
  finish = "result_genesis_end"
}
g_result_tpj = {
  stagename = "TOWN",
  id = 31,
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
  finish = "result_tpj_end"
}
g_message_setuped = ""
c_flag_start = 0
c_flag_0602 = c_flag_start + 2
c_flag_0605 = c_flag_start + 5
c_flag_0606 = c_flag_start + 6
c_flag_0608 = c_flag_start + 8
function main(_ARG_0_)
end
function on_goto(_ARG_0_, _ARG_1_)
  if g_mission_information.mission_area == "tpj/sonic/a" then
    g_mission_information.mission_terrain = "stage/tpj/b/"
    g_mission_information.mission_area = "tpj/sonic/b"
    g_mission_information.mission_set_default = "placement/tpj/set_tpjB_sonic.XML"
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  end
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "e0018_end" then
    PlayEvent(_ARG_0_, "e1091", "e1091_end")
    g_mission_information.mission_event_start = ""
    g_mission_information.mission_startup = ""
  elseif _ARG_1_ == "boss_is_dead" then
    g_mission_information.mission_progress = 65
    SetGlobalFlag(_ARG_0_, 4049, 1)
    Result(_ARG_0_, "g_result_genesis")
  elseif _ARG_1_ == "goto_tpj" then
    if GetTemporaryFlag(_ARG_0_, c_flag_0608) == 1 then
      g_mission_information.mission_string = "sonic_stg_tpj"
      g_mission_information.mission_terrain = "stage/tpj/a/"
      g_mission_information.mission_area = "tpj/sonic/a"
      g_mission_information.mission_set_default = "placement/tpj/set_tpjA_sonic.XML"
      g_mission_information.mission_is_battle = true
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
      g_mission_information.mission_area_text = "tropicaljungle"
    end
  elseif _ARG_1_ == "e1091_end" then
    g_mission_information.mission_terrain = "stage/boss/dr2_forest/"
    g_mission_information.mission_area = "eGenesis_sonic"
    g_mission_information.mission_set_default = "placement/boss/dr2/set_eGenesis_sonic.xml"
    g_mission_information.mission_is_battle = true
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
  elseif _ARG_1_ == "e0019_end" then
    SetTemporaryFlag(_ARG_0_, c_flag_0605, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0606, 1)
    SetTemporaryFlag(_ARG_0_, c_flag_0608, 1)
    g_mission_information.mission_string = "msg_twn_sonic22"
    g_mission_information.mission_terrain = "stage/twn/c/"
    g_mission_information.mission_area = "twn/sonic/c"
    g_mission_information.mission_set_default = "scripts/mission/0008/set_mission_0008c_01.XML"
    g_mission_information.mission_is_battle = false
    ChangeArea(_ARG_0_, g_mission_information.mission_area)
    g_mission_information.mission_area_text = "msg_solleanna_c"
  elseif _ARG_1_ == "e0020_movie_end" then
    SetNextMission(_ARG_0_, "scripts/mission/0010/mission.lua")
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "goto_a" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "goto_b" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "AtoB" then
    on_goto(_ARG_0_, _ARG_1_)
  elseif _ARG_1_ == "result_genesis_end" then
    g_mission_information.mission_string = "msg_twn_sonic22"
    PlayEvent(_ARG_0_, "e0019", "e0019_end")
  elseif _ARG_1_ == "result_tpj_end" then
    PlayMovie(_ARG_0_, "event/e0020/e0020.sfd", "e0020_movie_end")
  end
end
function on_talk_setup(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "shop" then
    OpenShop(_ARG_0_, "g_shop")
    g_message_setuped = ""
  else
    g_message_setuped = _ARG_1_ .. "0"
  end
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  g_mission_information.mission_progress = 73
  SetGlobalFlag(_ARG_0_, 4030, 1)
  Result(_ARG_0_, "g_result_tpj")
end
