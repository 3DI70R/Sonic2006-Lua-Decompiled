Other.TestDesign = inherits_from(ActionArea)
function Other.TestDesign.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestDesign")
end
function Other.TestDesign.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestDesign setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_test_design.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/tpj/scene_tpj_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
