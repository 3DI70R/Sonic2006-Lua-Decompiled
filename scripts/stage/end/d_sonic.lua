EndOfTheWorld.SonicD = inherits_from(ActionArea)
function EndOfTheWorld.SonicD.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicD")
end
function EndOfTheWorld.SonicD.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/dtd/a/"),
    Game.LoadSky("stage/end/d/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_d_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapD_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_d.lua"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_end_d")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicD.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar18")
  Game.Signal("dtd_pillar05")
  Game.Signal("dtd_pillar04")
end
function EndOfTheWorld.SonicD.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar19")
  Game.Signal("dtd_pillar20")
end
function EndOfTheWorld.SonicD.throw01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicD.throw02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
end
