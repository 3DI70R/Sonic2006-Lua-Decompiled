Boss.EggCerberusSonicArea = inherits_from(ActionArea)
function Boss.EggCerberusSonicArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EggCerberusSonicArea")
end
function Boss.EggCerberusSonicArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/dr1_dtd/"),
    Game.LoadStageSet("placement/boss/dr1/set_eCerberus_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/boss/scene_eCerberus_sonic.lua"),
    Game.LoadPath("placement/boss/dr1/path_eCerberus_sonic"),
    Game.LoadEvent("e0003"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_cerberus_e")
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
function Boss.EggCerberusSonicArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.EggCerberusSonic = inherits_from(ActionStage)
function Boss.EggCerberusSonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.EggCerberusSonicArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.EggCerberusSonic")
end
function Boss.EggCerberusSonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.EggCerberusSonic setup")
end
function Boss.EggCerberusSonic.StartPlaying(_ARG_0_)
end
