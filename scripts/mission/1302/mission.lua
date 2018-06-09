g_mission_information = {
  mission_string = "msg_twnA_welcomeKDV",
  mission_area = "twn/sonic/a",
  mission_terrain = "stage/twn/a/",
  mission_set_default = "scripts/mission/1302/set_mission_1302.XML",
  mission_event_start = "",
  mission_event_end = "",
  mission_is_battle = true
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
end
function on_talk_oepn(_ARG_0_, _ARG_1_)
end
function on_talk_close(_ARG_0_, _ARG_1_)
end
function on_goal(_ARG_0_)
  MissionClear(_ARG_0_, "complete")
end
