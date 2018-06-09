Boss.SonicVsSilverArea = inherits_from(ActionArea)
function Boss.SonicVsSilverArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct SonicVsSilverArea")
end
function Boss.SonicVsSilverArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("placement/boss/vs_character/set_sonic_vs_silver.XML"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.LoadEvent("e0006"),
    Game.PlayBGM("boss_character")
  })
  Game.SetPlayer(23000, 300, 750, 90, "sonic_new.lua")
  Game.SetPlayer(25000, 300, 750, -90, "boss_silver.lua", 1)
  Game.SetGenArea({
    size = {
      200 * 100,
      100 * 100,
      200 * 100
    }
  })
end
function Boss.SonicVsSilverArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.SonicVsSilver = inherits_from(ActionStage)
function Boss.SonicVsSilver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.SonicVsSilverArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SonicVsSilver")
end
function Boss.SonicVsSilver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SonicVsSilver setup")
end
function Boss.SonicVsSilver.StartPlaying(_ARG_0_)
end
