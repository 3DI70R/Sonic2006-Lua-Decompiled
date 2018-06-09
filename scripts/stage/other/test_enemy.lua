Other.TestEnemySonic = inherits_from(ActionArea)
function Other.TestEnemySonic.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestEnemySonic")
end
function Other.TestEnemySonic.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestEnemy setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test_enemy/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_enemy.xml"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/other/test_enemy/guide_test_enemy", "guide"),
    Game.LoadPath("placement/other/test_enemy/grind_test_enemy", "grind"),
    Game.LoadPath("placement/other/test_enemy/path_test_enemy")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "sonic_new.lua")
end
function Other.TestEnemySonic.test01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("GroupHelper02")
end
function Other.TestEnemySonic.test02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("GroupHelper03")
end
Other.TestEnemyShadow = inherits_from(ActionArea)
function Other.TestEnemyShadow.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestEnemyShadow")
end
function Other.TestEnemyShadow.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestEnemy setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test_enemy/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_enemy.xml"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/other/test_enemy/guid_test_enemy", "guide"),
    Game.LoadPath("placement/other/test_enemy/grind_test_enemy", "grind"),
    Game.LoadPath("placement/other/test_enemy/path_test_enemy")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "shadow.lua")
end
Other.TestEnemySilver = inherits_from(ActionArea)
function Other.TestEnemySilver.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestEnemySilver")
end
function Other.TestEnemySilver.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TestEnemy setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test_enemy/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_enemy.xml"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/other/test_enemy/guid_test_enemy", "guide"),
    Game.LoadPath("placement/other/test_enemy/grind_test_enemy", "grind"),
    Game.LoadPath("placement/other/test_enemy/path_test_enemy")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(100, 0, 0, 0, "silver.lua")
end
