g_mission_information = {
  mission_area = "test_battle",
  mission_terrain = "stage/kdv/a/",
  mission_set_default = "placement/kdv/set_kdv_a_tag.XML",
  mission_is_battle = true,
  mission_userule = "battle:royal",
  mission_event_start = "start_battle"
}
g_result = {
  stagename = "KINGDOM VOLLEY",
  finish = "result_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_end" then
    MissionClear(_ARG_0_, "complete")
  elseif _ARG_1_ == "start_battle" then
    StartCountdown(_ARG_0_, 30, "end_countdown")
  elseif _ARG_1_ == "end_countdown" then
    on_goal(_ARG_0_)
  end
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result")
end
