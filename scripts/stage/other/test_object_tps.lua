Other.TestObjectTps = inherits_from(ActionArea)
function Other.TestObjectTps.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectTps")
end
function Other.TestObjectTps.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectTps setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_tps.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadSoundBank("sound/stage_kdv")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "venice.lua")
end
