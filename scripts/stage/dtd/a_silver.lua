DustyDesert.SilverA = inherits_from(ActionArea)
function DustyDesert.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.SilverA")
end
function DustyDesert.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.SilverA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/dtd/a/"),
    Game.LoadStageSet("scripts/mission/0202/set_dtd_a_silver.XML"),
    Game.LoadStageSet("placement/dtd/dtd_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_a_sonic.lua"),
    Game.LoadPath("scripts/mission/0202/dtd_s_a"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_a")
  })
  Game.SetPlayer(15371, 1317, 50946, 160, "silver.lua")
end
function DustyDesert.SilverA.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
  Game.Signal("dtd_pillar03")
  Game.Signal("dtd_pillar12")
end
function DustyDesert.SilverA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere02")
  Game.Signal("impulsesphere01")
  Game.Signal("impulsesphere03")
  Game.Signal("impulsesphere04")
end
function DustyDesert.SilverA.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar09")
  Game.Signal("dtd_pillar10")
end
