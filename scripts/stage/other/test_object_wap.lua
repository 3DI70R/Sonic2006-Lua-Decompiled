Other.TestObjectWap = inherits_from(ActionArea)
function Other.TestObjectWap.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestObjectWap")
end
function Other.TestObjectWap.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestObjectWap setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test003/"),
    Game.LoadStageSet("placement/other/test_object/set_wap.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_a.lua"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadPath("stage/other/test003/snowball"),
    Game.LoadSoundBank("sound/stage_wap")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "venice.lua")
end
function Other.TestObjectWap.ev_001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("enemy appear")
end
function Other.TestObjectWap.ev_002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("delete light")
  Game.ProcessMessage("wap_searchlight01", "GateClose")
end
function Other.TestObjectWap.ev_003(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.Log("laser off")
    Game.ProcessMessage("common_laser01", "GateOpen")
  else
    Game.Log("laser on")
    Game.ProcessMessage("common_laser01", "GateClose")
  end
end
function Other.TestObjectWap.ev_004(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.Debug()
  if _ARG_1_ then
    Game.Log("door open")
    Game.ProcessMessage("wap_door01", "GateOpen")
  else
    Game.Log("door close")
    Game.ProcessMessage("wap_door01", "GateClose")
  end
end
function Other.TestObjectWap.ev_005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("path snowball appear")
  Game.ProcessMessage("wap_pathsnowball01", "Shoot", {target = _ARG_1_})
end
