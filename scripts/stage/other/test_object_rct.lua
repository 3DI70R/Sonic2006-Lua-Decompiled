Other.TestObjectRct = inherits_from(ActionArea)
function Other.TestObjectRct.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectRct")
end
function Other.TestObjectRct.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectRct setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_rct.xml"),
    Game.LoadStageSet("placement/other/test_object/set_rct_area.xml", "area"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_a.lua"),
    Game.LoadParticle("particle/Map_rct.plc"),
    Game.LoadPath("stage/other/test003/testrail2"),
    Game.LoadSoundBank("sound/stage_rct")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestObjectRct.ev_001(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Go")
end
function Other.TestObjectRct.ev_002(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train01", "Horn")
end
function Other.TestObjectRct.ev_003(_ARG_0_, _ARG_1_)
end
function Other.TestObjectRct.ev_004(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Cut")
end
function Other.TestObjectRct.ev_005(_ARG_0_, _ARG_1_)
end
function Other.TestObjectRct.ev_006(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Stop")
end
function Other.TestObjectRct.ev_007(_ARG_0_, _ARG_1_)
end
