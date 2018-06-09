Other.GameShowSonic = inherits_from(ActionArea)
function Other.GameShowSonic.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.GameShowSonic")
end
function Other.GameShowSonic.Setup(_ARG_0_)
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
  Game.PlayBGM("stg_kdv_a")
end
function Other.GameShowSonic.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.GameShowSonic.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function Other.GameShowSonic.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function Other.GameShowSonic.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function Other.GameShowSonic.hint01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_01"})
end
function Other.GameShowSonic.hint02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_02"})
end
function Other.GameShowSonic.hint03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_04"})
end
function Other.GameShowSonic.hint04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_03"})
end
function Other.GameShowSonic.hint11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_12"})
end
