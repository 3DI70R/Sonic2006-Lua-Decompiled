Other.TestObjectCmn = inherits_from(ActionArea)
function Other.TestObjectCmn.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectCmn")
end
function Other.TestObjectCmn.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectCmn setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_cmn.xml"),
    Game.LoadStageSet("placement/other/test_object/set_cmn_area.xml", "area"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/other/scene_test_aqa.lua"),
    Game.LoadPath("stage/other/test003/test3"),
    Game.LoadSoundBank("sound/stage_kdv")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestObjectCmn.StartPlaying(_ARG_0_)
end
function Other.TestObjectCmn.ev_001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("TestObjectCmn:ev_001")
  Game.Signal("common_ringswitch01")
end
