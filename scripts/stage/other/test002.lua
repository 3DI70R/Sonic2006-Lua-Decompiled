Other.Test002 = inherits_from(ActionArea)
function Other.Test002.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.Test002")
end
function Other.Test002.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadStageSet("placement/test002/set_test002.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadCameraSet("placement/test002/set_test002_camera.xml"),
    Game.LoadCameraParam("placement/test002/test002_cameraparam.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "sonic_new.lua")
end
