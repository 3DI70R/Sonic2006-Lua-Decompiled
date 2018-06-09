g_mission_information = {
  mission_area = "test_tag",
  mission_terrain = "stage/kdv/a/",
  mission_set_default = "placement/kdv/set_kdv_a_tag.XML",
  mission_is_battle = true,
  mission_userule = "tag"
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
  end
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result")
end
