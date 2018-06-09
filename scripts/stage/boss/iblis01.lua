Boss.Iblis01Area = inherits_from(ActionArea)
function Boss.Iblis01Area.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Iblis01Area")
end
function Boss.Iblis01Area.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/csc/iblis01/"),
    Game.LoadStageSet("scripts/mission/0201/set_iblis01_silver.XML"),
    Game.LoadParticle("particle/map_iblis01.plc"),
    Game.LoadStageSet("placement/iblis01/iblis01_map_effects.XML", "particle"),
    Game.LoadSceneParams("scripts/stage/boss/scene_firstiblis.lua"),
    Game.LoadPath("scripts/mission/0201/path_iblis01_silver"),
    Game.LoadCameraSet("placement/iblis01/set_iblis01_silver.XML"),
    Game.LoadEvent("bev_fib_03_start"),
    Game.LoadSoundBank("sound/boss_iblis"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_iblis_e"),
    Game.PlayBGM("boss_iblis01")
  })
  Game.SetGenArea({
    size = {
      200 * 100,
      150 * 100,
      200 * 100
    }
  })
end
function Boss.Iblis01Area.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.Iblis01 = inherits_from(ActionStage)
function Boss.Iblis01.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.Iblis01Area
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.Iblis01")
end
function Boss.Iblis01.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.Iblis01 setup")
end
function Boss.Iblis01.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {stagename = "Iblis01"})
end
function Boss.Iblis01.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
