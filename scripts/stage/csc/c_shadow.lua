CrisisCity.ShadowC = inherits_from(ActionArea)
function CrisisCity.ShadowC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.ShadowC")
end
function CrisisCity.ShadowC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.ShadowC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_csc_c.lua"),
    Game.LoadTerrain("stage/csc/c/"),
    Game.LoadStageSet("scripts/mission/0102/set_cscC_shadow.xml"),
    Game.LoadStageSet("placement/csc/set_cscC_shadow_area.xml", "area"),
    Game.LoadStageSet("placement/csc/csc_mapC_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_c.lua"),
    Game.LoadPath("placement/csc/path_cscC_shadow"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stage_csc_e")
  })
  Game.SetPlayer(625, 0, 0, 90, "shadow.lua")
end
function CrisisCity.ShadowC.StartPlaying(_ARG_0_)
end
function CrisisCity.ShadowC.CtoF(_ARG_0_)
  _ARG_0_:ChangeArea("Area F")
end
