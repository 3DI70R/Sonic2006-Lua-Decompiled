DustyDesert.SonicA = inherits_from(ActionArea)
function DustyDesert.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.SonicA")
end
function DustyDesert.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/dtd/a/"),
    Game.LoadStageSet("placement/dtd/set_dtd_a_sonic.xml"),
    Game.LoadStageSet("placement/dtd/dtd_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_a_sonic.lua"),
    Game.LoadPath("placement/dtd/dtd_s_a"),
    Game.LoadStageSet("placement/dtd/dset_dtd_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/dtd/dtd_s_a_guide", "guide"),
    Game.LoadCameraSet("placement/dtd/set_dtd_a_sonic.xml"),
    Game.LoadEvent("e0004"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_a")
  })
  Game.SetPlayer(15371, 1317, 50946, 160, "princess.lua")
end
function DustyDesert.SonicA.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
  Game.Signal("dtd_pillar03")
  Game.Signal("dtd_pillar12")
end
function DustyDesert.SonicA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere02")
  Game.Signal("impulsesphere01")
  Game.Signal("impulsesphere03")
  Game.Signal("impulsesphere04")
end
function DustyDesert.SonicA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar09")
  Game.Signal("dtd_pillar10")
end
function DustyDesert.SonicA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function DustyDesert.SonicA.pillar03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar05")
  Game.Signal("dtd_pillar04")
end
function DustyDesert.SonicA.pillar04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar13")
  Game.Signal("dtd_pillar14")
end
function DustyDesert.SonicA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
