KingdomValley.SonicA = inherits_from(ActionArea)
function KingdomValley.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.SonicA")
end
function KingdomValley.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc"),
    Game.LoadRenderScript("scripts/render/stage/render_kdv_a.lua"),
    Game.LoadTerrain("stage/kdv/a/"),
    Game.LoadStageSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadStageSet("placement/kdv/dset_kdv_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_s_a"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_a")
  })
  Game.SetPlayer(44068, 9483, 28589, 263, "sonic_new.lua")
end
function KingdomValley.SonicA.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function KingdomValley.SonicA.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.SonicA.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function KingdomValley.SonicA.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function KingdomValley.SonicA.hint01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_01"})
end
function KingdomValley.SonicA.hint02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_02"})
end
function KingdomValley.SonicA.hint03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_04"})
end
function KingdomValley.SonicA.hint04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_03"})
end
function KingdomValley.SonicA.hint11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_12"})
end
