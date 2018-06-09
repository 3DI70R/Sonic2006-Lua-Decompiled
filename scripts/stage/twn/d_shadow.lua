Town.ShadowD = inherits_from(ActionArea)
function Town.ShadowD.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.ShadowD")
end
function Town.ShadowD.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.ShadowD.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_a.lua"),
    Game.LoadTerrain("stage/twn/circuit/"),
    Game.LoadStageSet("placement/twn/d/set_twn_d.xml"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_d.lua"),
    Game.LoadKynapse("kynapse/town_d.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_d.lua"),
    Game.SetAreaName("town_d"),
    Game.PlayBGM("stg_twn_b")
  })
  Game.SetPlayer(6293, 301, -17780, -45, "shadow.lua")
end
