AquaticBase.SilverB = inherits_from(ActionArea)
function AquaticBase.SilverB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.SilverB")
end
function AquaticBase.SilverB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/b/"),
    Game.LoadStageSet("scripts/mission/0210/set_aqaB_silver.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_b.lua"),
    Game.LoadStageSet("placement/aqa/d_set_aqaB_silver_sonic.XML", "pathobj"),
    Game.LoadPath("placement/aqa/d_aqa_s_b", "pathobj"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_b")
  })
  Game.SetPlayer(-368, -109, -6021, 180, "silver.lua")
end
function AquaticBase.SilverB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door06")
end
function AquaticBase.SilverB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door05")
end
function AquaticBase.SilverB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door07")
end
function AquaticBase.SilverB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door02")
end
function AquaticBase.SilverB.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser13", "GateOpen")
  Game.ProcessMessage("common_laser14", "GateOpen")
  Game.ProcessMessage("common_laser15", "GateOpen")
  Game.ProcessMessage("common_laser16", "GateOpen")
  Game.ProcessMessage("common_laser17", "GateOpen")
  Game.ProcessMessage("common_laser18", "GateOpen")
end
function AquaticBase.SilverB.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
end
function AquaticBase.SilverB.laser03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser19", "GateClose")
  Game.ProcessMessage("common_laser20", "GateClose")
end
function AquaticBase.SilverB.laser04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser29", "GateClose")
  Game.ProcessMessage("common_laser30", "GateClose")
end
function AquaticBase.SilverB.laser05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser31", "GateClose")
  Game.ProcessMessage("common_laser32", "GateClose")
end
function AquaticBase.SilverB.laser08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
end
