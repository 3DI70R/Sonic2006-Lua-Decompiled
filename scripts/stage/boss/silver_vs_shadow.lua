Boss.SilverVsShadowArea = inherits_from(ActionArea)
function Boss.SilverVsShadowArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct SilverVsShadowArea")
end
function Boss.SilverVsShadowArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/charaboss2_rct/"),
    Game.LoadStageSet("scripts/mission/0210/set_silver_vs_shadow.XML"),
    Game.LoadPath("scripts/mission/0210/path_silver_vs_shadow"),
    Game.LoadSceneParams("scripts/stage/boss/scene_shadow_vs_silver.lua"),
    Game.PlayBGM("boss_character")
  })
  Game.SetPlayer(-3300, 790, 250, 90, "silver.lua")
  Game.SetPlayer(1300, 790, 250, -90, "boss_shadow.lua", 1)
  Game.SetGenArea({
    size = {
      200 * 100,
      100 * 100,
      200 * 100
    }
  })
end
function Boss.SilverVsShadowArea.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("freight_train01", "Go")
  Game.ProcessMessage("freight_train02", "Go")
end
function Boss.SilverVsShadowArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.SilverVsShadow = inherits_from(ActionStage)
function Boss.SilverVsShadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.SilverVsShadowArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SilverVsShadow")
end
function Boss.SilverVsShadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SilverVsShadow setup")
end
function Boss.SilverVsShadow.StartPlaying(_ARG_0_)
end
