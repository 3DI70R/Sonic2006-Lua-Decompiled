Other.TestObjectDtd = inherits_from(ActionArea)
function Other.TestObjectDtd.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectDtd")
end
function Other.TestObjectDtd.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectDtd setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_dtd.xml"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_a_sonic.lua"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadPath("stage/other/test003/test5"),
    Game.LoadSoundBank("sound/stage_dtd")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestObjectDtd.ev_001(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.ProcessMessage("dtd_door01", "GateOpen")
    Game.Log("dtd_door:GateOpen")
  else
    Game.ProcessMessage("dtd_door01", "GateClose")
    Game.Log("dtd_door:GateClose")
  end
end
function Other.TestObjectDtd.ev_002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("\131r\131\138\131\132\129[\131h\131X\131C\131b\131`\130\169\130\231\130\204\131\129\131b\131Z\129[\131W")
  Game.ProcessMessage("dtd_door01", "GateClose")
end
