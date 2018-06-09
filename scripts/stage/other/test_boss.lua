Other.BossTest = inherits_from(ActionArea)
function Other.BossTest.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.BossTest")
end
function Other.BossTest.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("BossTest setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/bosstest/"),
    Game.LoadStageSet("placement/other/test_enemy/set_test_boss.xml"),
    Game.LoadSceneEnvMap("stage/csc/b/csc_envmap.dds"),
    Game.LoadLight("scripts/stage/other/light_test_boss.lua")
  })
  Game.DebugCommand("shadowcameradist 5000")
  Game.SetPlayer(0, 3000, 12550, 180, "silver_boss_iblis1.lua")
  Game.SetGenArea({
    size = {
      400 * 100,
      100 * 100,
      400 * 100
    }
  })
end
