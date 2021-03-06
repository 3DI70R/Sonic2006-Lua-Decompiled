Other.TestTag = inherits_from(ActionArea)
function Other.TestTag.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestTag")
end
function Other.TestTag.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc"),
    Game.LoadRenderScript("scripts/render/render_gamemode_multi.lua"),
    Game.LoadTerrain("stage/kdv/a/"),
    Game.LoadStageSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadPath("placement/kdv/kdv_s_a"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.PlayBGM("stg_kdv_a")
  })
  Game.SetPlayer(44000, 9110, 28600, 0, "sonic_new.lua", 0)
  Game.SetPlayer(44200, 9110, 28600, 0, "shadow.lua", 1)
end
function Other.TestTag.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.TestTag.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.TestTag.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function Other.TestTag.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function Other.TestTag.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
