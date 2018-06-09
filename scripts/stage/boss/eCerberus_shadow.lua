Boss.EggCerberusShadowArea = inherits_from(ActionArea)
function Boss.EggCerberusShadowArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EggCerberusShadowArea")
end
function Boss.EggCerberusShadowArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/dr1_wap/"),
    Game.LoadStageSet("scripts/mission/0101/set_eCerberus_shadow.XML"),
    Game.LoadStageSet("placement/boss/dr1/wap_boss_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/boss/scene_eCerberus_shadow.lua"),
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
function Boss.EggCerberusShadowArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.EggCerberusShadow = inherits_from(ActionStage)
function Boss.EggCerberusShadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.EggCerberusShadowArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.EggCerberusShadow")
end
function Boss.EggCerberusShadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.EggCerberusShadow setup")
end
function Boss.EggCerberusShadow.StartPlaying(_ARG_0_)
end
