AquaticBase.SilverA = inherits_from(ActionArea)
function AquaticBase.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.SilverA")
end
function AquaticBase.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/a/"),
    Game.LoadStageSet("scripts/mission/0210/set_aqaA_silver.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_a.lua"),
    Game.LoadPath("placement/aqa/aqa_s_a_grind", "grind"),
    Game.LoadPath("placement/aqa/aqa_silver_a"),
    Game.LoadCameraSet("placement/aqa/set_aqaA_Silver.XML"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_a")
  })
  Game.SetPlayer(0, 750, -590, 0, "silver.lua")
end
function AquaticBase.SilverA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door18")
end
function AquaticBase.SilverA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door09")
end
function AquaticBase.SilverA.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
  Game.Signal("aqa_door10")
end
function AquaticBase.SilverA.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser60", "GateOpen")
  Game.ProcessMessage("common_laser61", "GateOpen")
end
function AquaticBase.SilverA.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door11")
  Game.ProcessMessage("common_laser68", "GateOpen")
  Game.ProcessMessage("common_laser69", "GateOpen")
end
function AquaticBase.SilverA.esp02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door12")
end
function AquaticBase.SilverA.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door13")
end
function AquaticBase.SilverA.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door21")
end
function AquaticBase.SilverA.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
  Game.Signal("aqa_door14")
  Game.ProcessMessage("aqa_door09", "GateClose")
end
function AquaticBase.SilverA.door11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door20")
end
function AquaticBase.SilverA.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door25")
end
