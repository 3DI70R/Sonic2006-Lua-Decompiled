g_mission_information = {
  mission_string = "msg_b0129",
  mission_area = "wvo/tag/a",
  mission_terrain = "stage/wvo/a/",
  mission_set_default = "scripts/mission/3000/set_wvo_a_tag.XML",
  mission_text = "text/msg_system.mst",
  mission_is_battle = true,
  mission_userule = "tag"
}
g_result_tag = {
  stagename = "TOWN",
  timebonus_base = 30000,
  timebonus_rate = 40,
  ringbonus_rate = 10,
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
  finish = "result_end"
}
function main(_ARG_0_)
end
function on_event(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "result_end" then
    if g_mission_information.mission_area == "wvo/tag/a" then
      g_mission_information.mission_terrain = "stage/dtd/b/"
      g_mission_information.mission_area = "dtd/tag/b"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_dtd_b_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "dtd/tag/b" then
      g_mission_information.mission_terrain = "stage/wap/b/"
      g_mission_information.mission_area = "wap/tag/b"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_wap_b_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "wap/tag/b" then
      g_mission_information.mission_terrain = "stage/csc/b/"
      g_mission_information.mission_area = "csc/tag/b"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_csc_b_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "csc/tag/b" then
      g_mission_information.mission_terrain = "stage/flc/a/"
      g_mission_information.mission_area = "flc/tag/a"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_flc_a_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "flc/tag/a" then
      g_mission_information.mission_terrain = "stage/kdv/a/"
      g_mission_information.mission_area = "kdv/tag/a"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_kdv_a_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "kdv/tag/a" then
      g_mission_information.mission_terrain = "stage/aqa/a/"
      g_mission_information.mission_area = "aqa/tag/a"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_aqa_a_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    elseif g_mission_information.mission_area == "aqa/tag/a" then
      g_mission_information.mission_terrain = "stage/wvo/a/"
      g_mission_information.mission_area = "wvo/tag/a"
      g_mission_information.mission_set_default = "scripts/mission/3000/set_wvo_a_tag.XML"
      ChangeArea(_ARG_0_, g_mission_information.mission_area)
    end
  end
end
function on_goal(_ARG_0_)
  Result(_ARG_0_, "g_result_tag")
end
