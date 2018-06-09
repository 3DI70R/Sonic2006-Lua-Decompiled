Other.TestObjectKdv = inherits_from(ActionArea)
function Other.TestObjectKdv.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectKdv")
end
function Other.TestObjectKdv.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectKdv setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_kdv.xml"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadParticle("particle/Map_kdv.plc"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadSoundBank("sound/stage_kdv")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(553, 251, 52, 0, "sonic_new.lua")
end
function Other.TestObjectKdv.StartPlaying(_ARG_0_)
end
