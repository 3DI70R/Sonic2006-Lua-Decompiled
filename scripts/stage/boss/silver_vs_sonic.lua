Boss.SilverVsSonicArea = inherits_from(ActionArea)
function Boss.SilverVsSonicArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct SilverVsSonicArea")
end
function Boss.SilverVsSonicArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("scripts/mission/0203/set_silver_vs_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.PlayBGM("boss_character")
  })
  Game.SetPlayer(25000, 300, 750, -90, "silver.lua")
  Game.SetPlayer(23000, 300, 750, 90, "boss_sonic.lua", 1)
  Game.SetGenArea({
    size = {
      200 * 100,
      100 * 100,
      200 * 100
    }
  })
end
function Boss.SilverVsSonicArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.SilverVsSonic = inherits_from(ActionStage)
function Boss.SilverVsSonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.SilverVsSonicArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SilverVsSonic")
end
function Boss.SilverVsSonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SilverVsSonic setup")
end
function Boss.SilverVsSonic.StartPlaying(_ARG_0_)
end
