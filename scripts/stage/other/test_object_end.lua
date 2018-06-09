Other.TestObjectEnd = inherits_from(ActionArea)
function Other.TestObjectEnd.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectEnd")
end
function Other.TestObjectEnd.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectEnd setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_end.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_a.lua"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadSoundBank("sound/stage_aqa")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestObjectEnd.ev_000(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  Game.ProcessMessage("rin", "Shoot", {target = _ARG_2_})
end
function Other.TestObjectEnd.ev_001(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  Game.Signal("remake")
end
