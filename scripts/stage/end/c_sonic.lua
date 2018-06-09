EndOfTheWorld.SonicC = inherits_from(ActionArea)
function EndOfTheWorld.SonicC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicC")
end
function EndOfTheWorld.SonicC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/tpj/c/"),
    Game.LoadSky("stage/end/c/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_c_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapC_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_tpj.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_c.lua"),
    Game.LoadSoundBank("sound/stage_tpj"),
    Game.LoadVoiceBank("sound/voice_tpj_e"),
    Game.PlayBGM("stg_end_c")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicC.thorow01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicC.thorow02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp03", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp04", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicC.thorow03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp05", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp06", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicC.thorow04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp07", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp08", "Shoot", {target = _ARG_1_})
end
