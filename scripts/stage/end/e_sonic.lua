EndOfTheWorld.SonicE = inherits_from(ActionArea)
function EndOfTheWorld.SonicE.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicE")
end
function EndOfTheWorld.SonicE.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadSky("stage/end/e/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_e_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapE_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_wvo.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_e.lua"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_end_e")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicE.thorow01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp03", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicE.thorow02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp04", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp05", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicE.thorow03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp06", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp07", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicE.thorow04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp08", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp09", "Shoot", {target = _ARG_1_})
end
