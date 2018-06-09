KingdomValley.ShadowA = inherits_from(ActionArea)
function KingdomValley.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.ShadowA")
end
function KingdomValley.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_kdv_a.lua"),
    Game.LoadTerrain("stage/kdv/a/"),
    Game.LoadStageSet("scripts/mission/0101/set_kdv_a_shadow.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadStageSet("placement/kdv/dset_kdv_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/path_kdv_g_a"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_shadow.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_d")
  })
  Game.SetPlayer(43464, 3991, 21862, 263, "shadow.lua")
end
function KingdomValley.ShadowA.goto_d(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area D")
end
function KingdomValley.ShadowA.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.ShadowA.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function KingdomValley.ShadowA.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
