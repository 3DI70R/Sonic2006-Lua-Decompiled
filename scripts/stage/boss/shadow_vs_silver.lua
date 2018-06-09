Boss.ShadowVsSilverArea = inherits_from(ActionArea)
function Boss.ShadowVsSilverArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct ShadowVsSilverArea")
end
function Boss.ShadowVsSilverArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/charaboss2_rct/"),
    Game.LoadStageSet("scripts/mission/0105/set_shadow_vs_silver.XML"),
    Game.LoadPath("scripts/mission/0105/path_shadow_vs_silver"),
    Game.LoadSceneParams("scripts/stage/boss/scene_shadow_vs_silver.lua"),
    Game.PlayBGM("boss_character")
  })
  Game.SetPlayer(1300, 790, 250, -90, "shadow.lua")
  Game.SetPlayer(-3300, 790, 250, 90, "boss_silver.lua", 1)
  Game.SetGenArea({
    size = {
      200 * 100,
      100 * 100,
      200 * 100
    }
  })
end
function Boss.ShadowVsSilverArea.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("freight_train01", "Go")
  Game.ProcessMessage("freight_train02", "Go")
end
function Boss.ShadowVsSilverArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.ShadowVsSilver = inherits_from(ActionStage)
function Boss.ShadowVsSilver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.ShadowVsSilverArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.ShadowVsSilver")
end
function Boss.ShadowVsSilver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.ShadowVsSilver setup")
end
function Boss.ShadowVsSilver.StartPlaying(_ARG_0_)
end
