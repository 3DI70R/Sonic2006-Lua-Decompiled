Boss.Solaris01 = inherits_from(ActionArea)
function Boss.Solaris01.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Solaris01")
end
function Boss.Solaris01.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/solaris_last/"),
    Game.LoadStageSet("scripts/mission/0301/set_solaris01_super3.XML"),
    Game.LoadSceneParams("scripts/stage/boss/scene_solaris_super3.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_solaris_e"),
    Game.PlayBGM("boss_solaris1")
  })
  Game.SetGenArea({
    size = {
      500 * 100,
      250 * 100,
      500 * 100
    }
  })
end
Boss.Solaris02 = inherits_from(ActionArea)
function Boss.Solaris02.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Solaris02")
end
function Boss.Solaris02.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/boss/solaris_last/"),
    Game.LoadStageSet("scripts/mission/0301/set_solaris02_super3.XML"),
    Game.LoadSceneParams("scripts/stage/boss/scene_solaris_super3.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_solaris_e"),
    Game.PlayBGM("boss_solaris2")
  })
  Game.SetGenArea({
    size = {
      500 * 100,
      250 * 100,
      500 * 100
    }
  })
end
Boss.Solaris = inherits_from(ActionStage)
function Boss.Solaris.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.Solaris01,
    ["Area B"] = Boss.Solaris02
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SolarisSuper3")
end
function Boss.Solaris.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SolarisSuper3 setup")
end
function Boss.Solaris.StartPlaying(_ARG_0_)
end
