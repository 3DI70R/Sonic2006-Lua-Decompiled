Other.TestPlayerSonic = inherits_from(ActionArea)
function Other.TestPlayerSonic.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSonic")
end
function Other.TestPlayerSonic.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadStageSet("placement/other/test002/set_test_player_goal.XML"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
end
Other.TestPlayerShadow = inherits_from(ActionArea)
function Other.TestPlayerShadow.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerShadow")
end
function Other.TestPlayerShadow.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadStageSet("placement/other/test002/set_test_player_shadow.XML"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "shadow.lua")
end
Other.TestPlayerSilver = inherits_from(ActionArea)
function Other.TestPlayerSilver.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSilver")
end
function Other.TestPlayerSilver.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadStageSet("placement/other/test002/set_test_player_silver.XML"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "silver.lua")
end
Other.TestPlayerPrincess = inherits_from(ActionArea)
function Other.TestPlayerPrincess.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerPrincess")
end
function Other.TestPlayerPrincess.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "princess.lua")
end
Other.TestPlayerOmega = inherits_from(ActionArea)
function Other.TestPlayerOmega.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerOmega")
end
function Other.TestPlayerOmega.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "omega.lua")
end
Other.TestPlayerTails = inherits_from(ActionArea)
function Other.TestPlayerTails.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerTails")
end
function Other.TestPlayerTails.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "tails.lua")
end
Other.TestPlayerAmy = inherits_from(ActionArea)
function Other.TestPlayerAmy.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerAmy")
end
function Other.TestPlayerAmy.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "amy.lua")
end
Other.TestPlayerKnuckles = inherits_from(ActionArea)
function Other.TestPlayerKnuckles.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerKnuckles")
end
function Other.TestPlayerKnuckles.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "knuckles.lua")
end
Other.TestPlayerBlaze = inherits_from(ActionArea)
function Other.TestPlayerBlaze.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerBlaze")
end
function Other.TestPlayerBlaze.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "blaze.lua")
end
Other.TestPlayerRouge = inherits_from(ActionArea)
function Other.TestPlayerRouge.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerRouge")
end
function Other.TestPlayerRouge.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadStageSet("placement/other/test002/set_test_player_silver.XML"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "rouge.lua")
end
Other.TestPlayerSuperSonic = inherits_from(ActionArea)
function Other.TestPlayerSuperSonic.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSuperSonic")
end
function Other.TestPlayerSuperSonic.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "supersonic.lua")
end
Other.TestPlayerSuperShadow = inherits_from(ActionArea)
function Other.TestPlayerSuperShadow.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSuperShadow")
end
function Other.TestPlayerSuperShadow.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "supershadow.lua")
end
Other.TestPlayerSuperSilver = inherits_from(ActionArea)
function Other.TestPlayerSuperSilver.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSuperSilver")
end
function Other.TestPlayerSuperSilver.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "supersilver.lua")
end
Other.TestPlayerSimple = inherits_from(ActionArea)
function Other.TestPlayerSimple.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestPlayerSimple")
end
function Other.TestPlayerSimple.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test002/"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 0, 0, 0, "simple.lua")
end
