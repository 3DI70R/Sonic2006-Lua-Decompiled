EndOfTheWorld.SonicF = inherits_from(ActionArea)
function EndOfTheWorld.SonicF.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct EndOfTheWorld.SonicF")
end
function EndOfTheWorld.SonicF.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_wap_b.lua"),
    Game.LoadTerrain("stage/wap/b/"),
    Game.LoadSky("stage/end/f/"),
    Game.LoadStageSet("scripts/mission/0301/set_end_f_sonic.XML"),
    Game.LoadStageSet("placement/end/end_mapF_effects.XML", "particle"),
    Game.LoadParticle("particle/map_end.plc"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/end/scene_end_f.lua"),
    Game.LoadPath("placement/csc/wap_s_b"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.LoadVoiceBank("sound/voice_end_e"),
    Game.PlayBGM("stg_end_f")
  })
  Game.SetPlayer(4000, 4500, 19635, 180, "sonic_new.lua")
end
function EndOfTheWorld.SonicF.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_door02")
end
function EndOfTheWorld.SonicF.thorow01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp01", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp02", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicF.thorow02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp03", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp04", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicF.thorow03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp05", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp06", "Shoot", {target = _ARG_1_})
end
function EndOfTheWorld.SonicF.thorow04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("end_outputwarp07", "Shoot", {target = _ARG_1_})
  Game.ProcessMessage("end_outputwarp08", "Shoot", {target = _ARG_1_})
end
