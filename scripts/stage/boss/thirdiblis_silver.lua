Boss.ThirdIblisSilverArea = inherits_from(ActionArea)
function Boss.ThirdIblisSilverArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct ThirdIblisSilverArea")
end
function Boss.ThirdIblisSilverArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/thirdiblis_flc/"),
    Game.LoadStageSet("scripts/mission/0211/set_thirdiblis_silver.XML"),
    Game.LoadStageSet("placement/boss/thirdiblis/iblis03_map_effects.XML", "particle"),
    Game.LoadParticle("particle/map_iblis03.plc"),
    Game.LoadSceneParams("scripts/stage/boss/scene_thirdiblis.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_iblis3_e"),
    Game.PlayBGM("boss_iblis03")
  })
  Game.SetGenArea({
    size = {
      600 * 100,
      150 * 100,
      600 * 100
    }
  })
end
function Boss.ThirdIblisSilverArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.ThirdIblisSilver = inherits_from(ActionStage)
function Boss.ThirdIblisSilver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.ThirdIblisSilverArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.ThirdIblisSilver")
end
function Boss.ThirdIblisSilver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.ThirdIblisSilver setup")
end
function Boss.ThirdIblisSilver.StartPlaying(_ARG_0_)
end
