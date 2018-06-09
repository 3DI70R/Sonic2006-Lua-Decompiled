CrisisCity.SonicC = inherits_from(ActionArea)
function CrisisCity.SonicC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SonicC")
end
function CrisisCity.SonicC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.SonicC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_csc_c.lua"),
    Game.LoadTerrain("stage/csc/c/"),
    Game.LoadStageSet("placement/csc/csc_mapC_effects.xml", "particle"),
    Game.LoadStageSet("placement/csc/set_cscC_sonic.xml"),
    Game.LoadStageSet("placement/csc/set_cscC_sonic_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_c.lua"),
    Game.LoadPath("placement/csc/path_cscC_sonic"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_f")
  })
  Game.SetPlayer(0, -450, 0, 90, "sonic_new.lua")
end
function CrisisCity.SonicC.StartPlaying(_ARG_0_)
end
function CrisisCity.SonicC.CtoE(_ARG_0_)
  _ARG_0_:ChangeArea("Area E")
end
