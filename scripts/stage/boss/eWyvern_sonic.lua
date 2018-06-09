Boss.EggWyvernSonicArea = inherits_from(ActionArea)
function Boss.EggWyvernSonicArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EggWyvernSonicArea")
end
function Boss.EggWyvernSonicArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/dr3_eggcarrier/"),
    Game.LoadSky("stage/boss/dr3_eggcarrier/action/"),
    Game.LoadStageSet("placement/boss/dr3/set_eWyvern_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/boss/scene_eWyvern_sonic.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_wyvern_e"),
    Game.PlayBGM("boss_wyvern")
  })
  Game.SetGenArea({
    size = {
      1200 * 100,
      1200 * 100,
      1200 * 100
    }
  })
end
function Boss.EggWyvernSonicArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.EggWyvernSonic = inherits_from(ActionStage)
function Boss.EggWyvernSonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.EggWyvernSonicArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.EggWyvernSonic")
end
function Boss.EggWyvernSonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.EggWyvernSonic setup")
end
function Boss.EggWyvernSonic.StartPlaying(_ARG_0_)
end
