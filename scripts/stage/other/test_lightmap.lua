Other.TestLightmap = inherits_from(ActionArea)
function Other.TestLightmap.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestLightmap")
end
function Other.TestLightmap.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestLightmap setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_lightmap.lua"),
    Game.LoadTerrain("stage/other/test_kdv/"),
    Game.LoadStageSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadPath("placement/kdv/kdv_s_a"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_sonic.XML")
  })
  Game.SetPlayer(44068, 9483, 28589, 263, "sonic_new.lua")
end
function Other.TestLightmap.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area C")
end
function Other.TestLightmap.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function Other.TestLightmap.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function Other.TestLightmap.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
