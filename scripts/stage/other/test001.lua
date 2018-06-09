Other.Test001 = inherits_from(ActionArea)
function Other.Test001.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.Test001")
end
function Other.Test001.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test001 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test001/"),
    Game.LoadStageSet("placement/test001/set_test001.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "sonic_new.lua")
end
