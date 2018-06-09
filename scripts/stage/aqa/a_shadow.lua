AquaticBase.ShadowA = inherits_from(ActionArea)
function AquaticBase.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.ShadowA")
end
function AquaticBase.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/a/"),
    Game.LoadStageSet("scripts/mission/0105/set_aqaA_shadow.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_a.lua"),
    Game.LoadPath("placement/aqa/aqa_s_a_grind", "grind"),
    Game.LoadPath("placement/aqa/aqa_shadow_a"),
    Game.LoadCameraSet("placement/aqa/set_aqaA_shadow.XML"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_a")
  })
  Game.SetPlayer(0, 750, -590, 0, "shadow.lua")
  Game.SetGenArea({
    size = {
      65 * 100,
      65 * 100,
      65 * 100
    }
  })
end
function AquaticBase.ShadowA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door18")
end
function AquaticBase.ShadowA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door09")
end
function AquaticBase.ShadowA.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door13")
end
function AquaticBase.ShadowA.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door12")
end
function AquaticBase.ShadowA.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
  Game.Signal("aqa_door10")
end
function AquaticBase.ShadowA.door11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door14")
end
function AquaticBase.ShadowA.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door15")
  Game.ProcessMessage("aqa_door09", "GateClose")
  Game.ProcessMessage("aqa_door10", "GateClose")
end
function AquaticBase.ShadowA.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door11")
  Game.StartEntityByName("GroupHelper40")
  Game.ProcessMessage("common_laser68", "GateOpen")
  Game.ProcessMessage("common_laser69", "GateOpen")
end
function AquaticBase.ShadowA.laser01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser60", "GateOpen")
  Game.ProcessMessage("common_laser61", "GateOpen")
end
function AquaticBase.ShadowA.kakushi01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door16")
end
