Other.TestObjectFlc = inherits_from(ActionArea)
function Other.TestObjectFlc.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectFlc")
end
function Other.TestObjectFlc.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectFlc setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_flc.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadSoundBank("sound/stage_kdv")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
