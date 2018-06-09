Other.TestVehicle = inherits_from(ActionArea)
function Other.TestVehicle.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestVehicle")
end
function Other.TestVehicle.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("test002 setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/other/test_enemy/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_vehicle.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/other/test_enemy/guide_test_enemy", "guide"),
    Game.LoadPath("placement/other/test_enemy/grind_test_enemy", "grind"),
    Game.LoadPath("placement/other/test_enemy/path_test_enemy")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(10250, 5600, -14830, 0, "shadow.lua")
end
