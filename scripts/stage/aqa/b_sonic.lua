AquaticBase.SonicB = inherits_from(ActionArea)
function AquaticBase.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.SonicB")
end
function AquaticBase.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/b/"),
    Game.LoadStageSet("placement/aqa/set_aqaB_sonic.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapB_effects.xml", "particle"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_b.lua"),
    Game.LoadPath("placement/aqa/aqa_s_b"),
    Game.LoadStageSet("placement/aqa/d_set_aqaB_sonic.XML", "pathobj"),
    Game.LoadPath("placement/aqa/d_aqa_s_b", "pathobj"),
    Game.LoadCameraSet("placement/aqa/set_aqaB_sonic.XML"),
    Game.LoadPath("placement/aqa/aqa_s_b_guide", "guide"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_b")
  })
  Game.SetPlayer(43619.371, 9628.525, -31967.338, 180, "sonic_new.lua")
end
function AquaticBase.SonicB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door01")
end
function AquaticBase.SonicB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door02")
end
function AquaticBase.SonicB.door_close02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("aqa_door02", "GateClose")
end
function AquaticBase.SonicB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door03")
end
function AquaticBase.SonicB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door04")
end
function AquaticBase.SonicB.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door07")
end
function AquaticBase.SonicB.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("amigo_collision01")
  Game.StartEntityByName("GroupHelper10")
end
function AquaticBase.SonicB.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
end
function AquaticBase.SonicB.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door09")
end
function AquaticBase.SonicB.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door10")
end
function AquaticBase.SonicB.close01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue01")
end
function AquaticBase.SonicB.close02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue02")
end
function AquaticBase.SonicB.close03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue03")
end
function AquaticBase.SonicB.close04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue04")
end
function AquaticBase.SonicB.close04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue04")
end
function AquaticBase.SonicB.close05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue05")
end
function AquaticBase.SonicB.close06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue06")
end
function AquaticBase.SonicB.close07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue07")
end
function AquaticBase.SonicB.close08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue08")
end
function AquaticBase.SonicB.close09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue09")
end
function AquaticBase.SonicB.close10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue10")
end
function AquaticBase.SonicB.close11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue11")
end
function AquaticBase.SonicB.close12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue12")
end
