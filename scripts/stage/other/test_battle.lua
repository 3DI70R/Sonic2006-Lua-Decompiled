Other.TestBattle = inherits_from(ActionArea)
function Other.TestBattle.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Other.TestBattle")
end
function Other.TestBattle.Setup(_ARG_0_)
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
  Game.SetPlayer(44400, 9110, 28600, 0, "omega.lua", 2)
  Game.SetPlayer(44600, 9110, 28600, 0, "knuckles.lua", 3)
end
function Other.TestBattle.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.TestBattle.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function Other.TestBattle.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function Other.TestBattle.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function Other.TestBattle.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
