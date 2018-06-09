EndOfTheWorld.SonicA = inherits_from(ActionArea)
function EndOfTheWorld.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicA")
end
function EndOfTheWorld.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/csc/f/"),
    Game.LoadSky("stage/end/a/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_a_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapA_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_csc.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_a.lua"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_end_a")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicA.thorow01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
end
