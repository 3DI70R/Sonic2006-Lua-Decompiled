AquaticBase.ShadowB = inherits_from(ActionArea)
function AquaticBase.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct AquaticBase.ShadowB")
end
function AquaticBase.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/aqa/b/"),
    Game.LoadStageSet("scripts/mission/0105/set_aqaB_shadow.XML"),
    Game.LoadStageSet("placement/aqa/aqa_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_b.lua"),
    Game.LoadStageSet("placement/aqa/d_set_aqaB_sonic.XML", "pathobj"),
    Game.LoadPath("placement/aqa/d_aqa_s_b", "pathobj"),
    Game.LoadPath("placement/aqa/aqa_s_b_guide", "guide"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_b")
  })
  Game.SetPlayer(-368, -109, -6021, 180, "shadow.lua")
end
function AquaticBase.ShadowB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door05")
end
function AquaticBase.ShadowB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door04")
end
function AquaticBase.ShadowB.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door07")
end
function AquaticBase.ShadowB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door01")
end
function AquaticBase.ShadowB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door06")
end
function AquaticBase.ShadowB.close01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue01")
end
function AquaticBase.ShadowB.close02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue02")
end
function AquaticBase.ShadowB.close03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue03")
end
function AquaticBase.ShadowB.close04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_glass_blue04")
end
function AquaticBase.ShadowB.door_last(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
end
