WhiteAcropolis.SonicB = inherits_from(ActionArea)
function WhiteAcropolis.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.SonicB")
end
function WhiteAcropolis.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.SonicB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_wap_b.lua"),
    Game.LoadTerrain("stage/wap/b/"),
    Game.LoadStageSet("placement/wap/set_wap_b_sonic.XML"),
    Game.LoadStageSet("placement/wap/wap_mapB_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_b.lua"),
    Game.LoadPath("placement/wap/wap_s_b"),
    Game.LoadPath("placement/wap/wap_s_b_grind", "grind"),
    Game.LoadCameraSet("placement/wap/set_wap_b_sonic.XML"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_b")
  })
  Game.SetPlayer(15957, 407, -19696, 0, "sonic_new.lua")
  Game.SetPlayer(15757, 407, -19696, 0, "tails.lua", 1, true)
  Game.SetPlayer(15557, 407, -19696, 0, "sonic_new.lua", 2, true)
end
function WhiteAcropolis.SonicB.StartPlaying(_ARG_0_)
end
function WhiteAcropolis.SonicB.laser01(_ARG_0_, _ARG_1_)
  Game.Signal("laser01")
  Game.ProcessMessage("common_laser25", "GateOpen")
  Game.ProcessMessage("common_laser26", "GateOpen")
end
function WhiteAcropolis.SonicB.enemy01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01")
  Game.StartEntityByName("GroupHelper01")
end
function WhiteAcropolis.SonicB.enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper02")
  Game.ProcessMessage("common_laser32", "GateClose")
  Game.ProcessMessage("common_laser31", "GateClose")
end
function WhiteAcropolis.SonicB.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser32", "GateOpen")
  Game.ProcessMessage("common_laser31", "GateOpen")
end
function WhiteAcropolis.SonicB.enemy03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser33", "GateClose")
  Game.ProcessMessage("common_laser34", "GateClose")
  Game.StartEntityByName("GroupHelper03")
end
function WhiteAcropolis.SonicB.laser03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser33", "GateOpen")
  Game.ProcessMessage("common_laser34", "GateOpen")
end
function WhiteAcropolis.SonicB.enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper08")
end
function WhiteAcropolis.SonicB.laser04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser35", "GateOpen")
  Game.ProcessMessage("common_laser36", "GateOpen")
end
function WhiteAcropolis.SonicB.enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function WhiteAcropolis.SonicB.door01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper20")
end
function WhiteAcropolis.SonicB.laser05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser33", "GateOpen")
  Game.ProcessMessage("common_laser34", "GateOpen")
end
function WhiteAcropolis.SonicB.laser06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser31", "GateOpen")
  Game.ProcessMessage("common_laser32", "GateOpen")
end
function WhiteAcropolis.SonicB.door02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("wap_door06", "GateClose")
end
function WhiteAcropolis.SonicB.switch01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function WhiteAcropolis.SonicB.enemy10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function WhiteAcropolis.SonicB.enemy11(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper15")
end
function WhiteAcropolis.SonicB.enemy12(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper16")
end
