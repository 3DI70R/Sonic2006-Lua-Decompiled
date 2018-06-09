Other.TestObjectAqa = inherits_from(ActionArea)
function Other.TestObjectAqa.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectAqa")
end
function Other.TestObjectAqa.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectAqa setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_aqa.xml"),
    Game.LoadSceneParams("scripts/stage/other/scene_test_aqa.lua"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSoundBank("sound/stage_aqa")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
