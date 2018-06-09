EndOfTheWorld.SonicB = inherits_from(ActionArea)
function EndOfTheWorld.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicB")
end
function EndOfTheWorld.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/flc/a/"),
    Game.LoadSky("stage/end/b/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_b_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapB_effects.XML", "particle"),
    Game.LoadPath("placement/end/end_s_b"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_flc.plc"),
    Game.LoadStageSet("placement/flc/dset_flc_a.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_b.lua"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc"),
    Game.PlayBGM("stg_end_b")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicB.move01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath03")
end
function EndOfTheWorld.SonicB.throw01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicB.throw02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp03", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicB.throw03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp04", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp05", "Shoot", {target = _ARG_1_})
end
