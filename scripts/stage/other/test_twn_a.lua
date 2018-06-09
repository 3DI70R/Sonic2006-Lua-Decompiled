Other.TestTown = inherits_from(ActionArea)
function Other.TestTown.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestTown")
end
function Other.TestTown.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Other.TestTown.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_a.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_twn_a.xml"),
    Game.LoadStageSet("placement/twn/a/twn_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.LoadCameraSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadKynapse("kynapse/town_a.kbf"),
    Game.SetAreaName("town_a"),
    Game.LoadStageSet("placement/twn/a/dset_twn_a_sonic.XML", "pathobj"),
    Game.PlayBGM("stg_twn_a"),
    Game.LoadRaderMap("twn/twn_radermap_a")
  })
  Game.SetPlayer(6293, 301, -17780, -45, "sonic_new.lua")
end
