WhiteAcropolis.ShadowB = inherits_from(ActionArea)
function WhiteAcropolis.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.ShadowB")
end
function WhiteAcropolis.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.ShadowB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_wap_b.lua"),
    Game.LoadTerrain("stage/wap/b/"),
    Game.LoadStageSet("scripts/mission/0101/set_wap_b_shadow.XML"),
    Game.LoadStageSet("placement/wap/wap_mapB_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_b.lua"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_b")
  })
  Game.SetPlayer(-4725.669, 0, 18379.227, 0, "rouge.lua")
  Game.SetPlayer(15757, 407, -19696, 0, "shadow.lua", 1, true)
end
function WhiteAcropolis.ShadowB.StartPlaying(_ARG_0_)
end
function WhiteAcropolis.ShadowB.laser001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_laser07")
  Game.Signal("common_laser08")
end
function WhiteAcropolis.ShadowB.enemy01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01")
  Game.StartEntityByName("GroupHelper01")
  Game.ProcessMessage("common_laser21", "GateClose")
  Game.ProcessMessage("common_laser22", "GateClose")
end
function WhiteAcropolis.ShadowB.enemy01_01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01_01")
  Game.ProcessMessage("common_laser21", "GateOpen")
  Game.ProcessMessage("common_laser22", "GateOpen")
end
function WhiteAcropolis.ShadowB.enemy02(_ARG_0_, _ARG_1_)
  Game.Signal("enemy02")
  Game.StartEntityByName("GroupHelper03")
end
function WhiteAcropolis.ShadowB.enemy03(_ARG_0_, _ARG_1_)
  Game.Signal("enemy03")
  Game.StartEntityByName("GroupHelper04")
end
function WhiteAcropolis.ShadowB.enemy04(_ARG_0_, _ARG_1_)
  Game.Signal("enemy03")
  Game.StartEntityByName("GroupHelper05")
  Game.ProcessMessage("common_laser25", "GateClose")
  Game.ProcessMessage("common_laser26", "GateClose")
end
function WhiteAcropolis.ShadowB.enemy04_01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy04_01")
  Game.ProcessMessage("common_laser25", "GateOpen")
  Game.ProcessMessage("common_laser26", "GateOpen")
end
function WhiteAcropolis.ShadowB.laser03(_ARG_0_, _ARG_1_)
  Game.Signal("laser03")
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function WhiteAcropolis.ShadowB.laser04(_ARG_0_, _ARG_1_)
  Game.Signal("laser04")
  Game.ProcessMessage("common_laser07", "GateClose")
  Game.ProcessMessage("common_laser08", "GateClose")
  Game.ProcessMessage("common_laser13", "GateClose")
  Game.ProcessMessage("common_laser14", "GateClose")
end
function WhiteAcropolis.ShadowB.laser05(_ARG_0_, _ARG_1_)
  Game.Signal("laser04")
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
  Game.ProcessMessage("common_laser13", "GateOpen")
  Game.ProcessMessage("common_laser14", "GateOpen")
end
function WhiteAcropolis.ShadowB.enemy11(_ARG_0_, _ARG_1_)
  Game.Signal("enemy11")
  Game.StartEntityByName("GroupHelper20")
end
function WhiteAcropolis.ShadowB.enemy12(_ARG_0_, _ARG_1_)
  Game.Signal("enemy12")
  Game.StartEntityByName("GroupHelper21")
end
function WhiteAcropolis.ShadowB.enemy13(_ARG_0_, _ARG_1_)
  Game.Signal("enemy13")
  Game.StartEntityByName("GroupHelper22")
end
function WhiteAcropolis.ShadowB.enemy14(_ARG_0_, _ARG_1_)
  Game.Signal("enemy14")
  Game.StartEntityByName("GroupHelper25")
end
function WhiteAcropolis.ShadowB.door01(_ARG_0_, _ARG_1_)
  Game.Signal("wap_door03")
  Game.StartEntityByName("common_hint_collision15")
end
function WhiteAcropolis.ShadowB.enemy15(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper15")
end
function WhiteAcropolis.ShadowB.ring01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper19")
end
