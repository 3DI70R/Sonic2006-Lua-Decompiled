DustyDesert.SonicB = inherits_from(ActionArea)
function DustyDesert.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.SonicB")
end
function DustyDesert.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.SonicB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/dtd/b/"),
    Game.LoadStageSet("placement/dtd/set_dtd_b_sonic.xml"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadStageSet("placement/dtd/dtd_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_b_sonic.lua"),
    Game.LoadPath("placement/dtd/dtd_s_b"),
    Game.LoadStageSet("placement/dtd/dset_dtd_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/dtd/d_dtd_s_b", "pathobj"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_b")
  })
  Game.SetPlayer(32230, 3426, 12100, -90, "sonic_new.lua")
end
