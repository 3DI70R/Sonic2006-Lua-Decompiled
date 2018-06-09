Boss.EggGenesisSonicArea = inherits_from(ActionArea)
function Boss.EggGenesisSonicArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EggGenesisSonicArea")
end
function Boss.EggGenesisSonicArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_zprepass.lua"),
    Game.LoadTerrain("stage/boss/dr2_forest/"),
    Game.LoadStageSet("placement/boss/dr2/set_eGenesis_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/boss/scene_eGenesis_sonic.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_genesis_e")
  })
  Game.PlayBGM("boss_cerberus")
  Game.SetGenArea({
    size = {
      500 * 100,
      150 * 100,
      500 * 100
    }
  })
end
function Boss.EggGenesisSonicArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.EggGenesisSonic = inherits_from(ActionStage)
function Boss.EggGenesisSonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.EggGenesisSonicArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.EggGenesisSonic")
end
function Boss.EggGenesisSonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.EggGenesisSonic setup")
end
function Boss.EggGenesisSonic.StartPlaying(_ARG_0_)
end
