CrisisCity.SonicA = inherits_from(ActionArea)
function CrisisCity.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SonicA")
end
function CrisisCity.SonicA.Setup(_ARG_0_)
  Game.Log("sonic A setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/csc/a/"),
    Game.LoadStageSet("placement/csc/set_cscA_sonic.xml"),
    Game.LoadStageSet("placement/csc/csc_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_a.lua"),
    Game.LoadPath("placement/csc/path_cscA_sonic"),
    Game.LoadPath("placement/csc/grind_cscA_sonic", "grind"),
    Game.LoadPath("placement/csc/guide_cscA_sonic", "guide"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_a")
  })
  Game.SetPlayer(51905.984, 29530.59, -6718.437, 180, "snow_board.lua")
end
function CrisisCity.SonicA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function CrisisCity.SonicA.explosion_001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode01")
  Game.Signal("bldgexplode02")
  Game.Signal("bldgexplode03")
  Game.Signal("bldgexplode11")
  Game.Signal("cscglassbuildbomb01")
  Game.Signal("cscglassbuildbomb02")
  Game.Signal("cscglassbuildbomb03")
  Game.Signal("cscglassbuildbomb11")
end
function CrisisCity.SonicA.explosion_002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode04")
  Game.Signal("bldgexplode05")
  Game.Signal("cscglassbuildbomb04")
  Game.Signal("cscglassbuildbomb05")
end
function CrisisCity.SonicA.explosion_003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode06")
  Game.Signal("bldgexplode07")
  Game.Signal("bldgexplode08")
  Game.Signal("cscglassbuildbomb06")
  Game.Signal("cscglassbuildbomb07")
  Game.Signal("cscglassbuildbomb08")
end
function CrisisCity.SonicA.explosion_004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode09")
  Game.Signal("bldgexplode10")
  Game.Signal("cscglassbuildbomb09")
  Game.Signal("cscglassbuildbomb10")
end
function CrisisCity.SonicA.explosion_005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode12")
  Game.Signal("bldgexplode15")
  Game.Signal("bldgexplode16")
  Game.Signal("cscglassbuildbomb12")
  Game.Signal("cscglassbuildbomb15")
  Game.Signal("cscglassbuildbomb16")
end
function CrisisCity.SonicA.explosion_006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode17")
  Game.Signal("bldgexplode18")
  Game.Signal("cscglassbuildbomb17")
  Game.Signal("cscglassbuildbomb18")
end
function CrisisCity.SonicA.explosion_007(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode19")
  Game.Signal("bldgexplode20")
  Game.Signal("cscglassbuildbomb19")
  Game.Signal("cscglassbuildbomb20")
end
function CrisisCity.SonicA.glassbreak001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics44")
  Game.Signal("objectphysics45")
  Game.Signal("objectphysics46")
  Game.Signal("objectphysics47")
  Game.Signal("objectphysics48")
  Game.Signal("objectphysics49")
  Game.Signal("objectphysics50")
  Game.Signal("impulsesphere01")
  Game.Signal("bldgexplode13")
end
function CrisisCity.SonicA.glassbreak002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics51")
  Game.Signal("objectphysics52")
  Game.Signal("objectphysics53")
  Game.Signal("objectphysics54")
  Game.Signal("objectphysics55")
  Game.Signal("impulsesphere02")
  Game.Signal("bldgexplode14")
end
