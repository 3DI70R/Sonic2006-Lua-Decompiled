g_mission_information = {
  mission_string = "msg_act08",
  mission_area = g_battle_stage .. "/tag/" .. g_battle_area,
  mission_terrain = "stage/" .. g_battle_stage .. "/" .. g_battle_area .. "/",
  mission_set_default = "scripts/mission/4000/set_" .. g_battle_stage .. "_" .. g_battle_area .. "_battle.XML",
  mission_text = "text/msg_system.mst",
  mission_is_battle = true,
  mission_userule = "battle"
}
g_result_battle = {stagename = "TOWN", finish = "result_end"}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_end" then
    MissionClear(_ARG_0_, "complete")
  end
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result_battle")
end
