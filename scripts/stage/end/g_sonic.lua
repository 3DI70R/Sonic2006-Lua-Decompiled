EndOfTheWorld.SonicG = inherits_from(ActionArea)
function EndOfTheWorld.SonicG.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicG")
end
function EndOfTheWorld.SonicG.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_wvo.lua"),
    Game.LoadTerrain("stage/kdv/a/"),
    Game.LoadSky("stage/end/g/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_g_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapG_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_kdv.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_g.lua"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadPath("placement/kdv/kdv_s_a"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_end_g")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicG.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function EndOfTheWorld.SonicG.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function EndOfTheWorld.SonicG.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function EndOfTheWorld.SonicG.thorow01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicG.thorow02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp03", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicG.thorow03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp04", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp05", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicG.thorow04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp06", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp07", "Shoot", {target = _ARG_1_})
end
