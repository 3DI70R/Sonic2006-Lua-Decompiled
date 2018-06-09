AquaticBase.SonicA = inherits_from(ActionArea)
function AquaticBase.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.SonicA")
end
function AquaticBase.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/a/"),
    Game.LoadStageSet("placement/aqa/set_aqaA_sonic.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_a.lua"),
    Game.LoadStageSet("placement/aqa/d_set_aqaA_sonic.XML", "pathobj"),
    Game.LoadPath("placement/aqa/d_aqa_s_a", "pathobj"),
    Game.LoadCameraSet("placement/aqa/set_aqaA_sonic.XML"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_a")
  })
  Game.SetPlayer(-946, -835, 113, 0, "sonic_new.lua")
end
function AquaticBase.SonicA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door01")
end
function AquaticBase.SonicA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door02")
end
function AquaticBase.SonicA.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door03")
end
function AquaticBase.SonicA.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door04")
end
function AquaticBase.SonicA.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door05")
end
function AquaticBase.SonicA.enemy01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("GroupHelper03")
end
function AquaticBase.SonicA.laser01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser60", "GateClose")
  Game.ProcessMessage("common_laser61", "GateClose")
end
function AquaticBase.SonicA.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door06")
end
function AquaticBase.SonicA.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
end
function AquaticBase.SonicA.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door11")
  Game.ProcessMessage("common_laser68", "GateOpen")
  Game.ProcessMessage("common_laser69", "GateOpen")
end
function AquaticBase.SonicA.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door13")
end
function AquaticBase.SonicA.enemy01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("amigo_collision03")
  Game.StartEntityByName("GroupHelper11")
  Game.StartEntityByName("common_hint_collision06")
end
function AquaticBase.SonicA.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door15")
end
function AquaticBase.SonicA.door11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door10")
end
function AquaticBase.SonicA.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser61", "GateOpen")
  Game.ProcessMessage("common_laser60", "GateOpen")
end
function AquaticBase.SonicA.door13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door16")
end
function AquaticBase.SonicA.door14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door17")
end
function AquaticBase.SonicA.door15(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door19")
end
function AquaticBase.SonicA.door16(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("aqa_door08", "GateClose")
end
function AquaticBase.SonicA.door17(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door14")
end
