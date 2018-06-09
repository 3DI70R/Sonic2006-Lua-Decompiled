Other.TestObjectWvo = inherits_from(ActionArea)
function Other.TestObjectWvo.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectWvo")
end
function Other.TestObjectWvo.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectWvo setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_wvo.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadParticle("particle/map_wvo.plc"),
    Game.LoadPath("stage/other/test003/waterslider"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadRaderMap("twn/twn_radermap_a"),
    Game.PlayBGM("stg_wvo_b")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestObjectWvo.ev_001(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.Log("door open")
    Game.ProcessMessage("wvo_doorA00", "GateOpen")
  else
    Game.Log("door close")
    Game.ProcessMessage("wvo_doorA00", "GateClose")
  end
end
function Other.TestObjectWvo.ev_002(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.Log("door open")
    Game.ProcessMessage("wvo_doorB00", "GateOpen")
  else
    Game.Log("door close")
    Game.ProcessMessage("wvo_doorB00", "GateClose")
  end
end
function Other.TestObjectWvo.ev_003(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.Log("thorn in")
    Game.ProcessMessage("common_thorn02", "GateOpen")
  else
    Game.Log("laser on")
    Game.ProcessMessage("common_thorn02", "GateClose")
  end
end
function Other.TestObjectWvo.ev_004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("atk orca appear")
  Game.Signal("orca")
end
