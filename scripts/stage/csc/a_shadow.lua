CrisisCity.ShadowA = inherits_from(ActionArea)
function CrisisCity.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.ShadowA")
end
function CrisisCity.ShadowA.Setup(_ARG_0_)
  Game.Log("shadow A setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/csc/a/"),
    Game.LoadStageSet("scripts/mission/0102/set_cscA_shadow.xml"),
    Game.LoadStageSet("placement/csc/csc_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_a.lua"),
    Game.LoadPath("placement/csc/grind_cscA_sonic", "grind"),
    Game.LoadPath("placement/csc/guide_cscA_sonic", "guide"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_a")
  })
  Game.SetPlayer(45168.621, 23707.303, -16860.594, 90, "shadow.lua")
end
function CrisisCity.ShadowA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function CrisisCity.ShadowA.explosion_001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode00")
  Game.Signal("bldgexplode01")
  Game.Signal("bldgexplode02")
  Game.Signal("cscglassbuildbomb00")
  Game.Signal("cscglassbuildbomb01")
  Game.Signal("cscglassbuildbomb02")
end
function CrisisCity.ShadowA.explosion_002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode04")
  Game.Signal("bldgexplode05")
  Game.Signal("cscglassbuildbomb04")
  Game.Signal("cscglassbuildbomb05")
end
function CrisisCity.ShadowA.explosion_003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode06")
  Game.Signal("bldgexplode07")
  Game.Signal("bldgexplode08")
  Game.Signal("cscglassbuildbomb06")
  Game.Signal("cscglassbuildbomb07")
  Game.Signal("cscglassbuildbomb08")
end
function CrisisCity.ShadowA.explosion_008(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode08")
  Game.Signal("cscglassbuildbomb08")
end
function CrisisCity.ShadowA.explosion_004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode09")
  Game.Signal("bldgexplode10")
  Game.Signal("cscglassbuildbomb09")
  Game.Signal("cscglassbuildbomb10")
end
function CrisisCity.ShadowA.explosion_005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode15")
  Game.Signal("cscglassbuildbomb15")
end
function CrisisCity.ShadowA.explosion_006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode16")
  Game.Signal("bldgexplode17")
  Game.Signal("cscglassbuildbomb16")
  Game.Signal("cscglassbuildbomb17")
end
function CrisisCity.ShadowA.explosion_007(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode18")
  Game.Signal("bldgexplode19")
  Game.Signal("cscglassbuildbomb18")
  Game.Signal("cscglassbuildbomb19")
end
