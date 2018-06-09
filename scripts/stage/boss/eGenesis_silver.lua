Boss.EggGenesisSilverArea = inherits_from(ActionArea)
function Boss.EggGenesisSilverArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EggGenesisSilverArea")
end
function Boss.EggGenesisSilverArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_wap_b.lua"),
    Game.LoadTerrain("stage/boss/dr1_wap/"),
    Game.LoadStageSet("scripts/mission/0203/set_eGenesis_silver.XML"),
    Game.LoadStageSet("placement/boss/dr1/wap_boss_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/boss/scene_eGenesis_silver.lua"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_genesis_e")
  })
  Game.PlayBGM("boss_cerberus")
  Game.SetGenArea({
    size = {
      400 * 100,
      60 * 100,
      400 * 100
    }
  })
end
function Boss.EggGenesisSilverArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.EggGenesisSilver = inherits_from(ActionStage)
function Boss.EggGenesisSilver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.EggGenesisSilverArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.EggGenesisSilver")
end
function Boss.EggGenesisSilver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.EggGenesisSilver setup")
end
function Boss.EggGenesisSilver.StartPlaying(_ARG_0_)
end
