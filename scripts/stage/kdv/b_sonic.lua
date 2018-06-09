KingdomValley.SonicB = inherits_from(ActionArea)
function KingdomValley.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.SonicB")
end
function KingdomValley.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/b/"),
    Game.LoadStageSet("placement/kdv/set_kdv_b_sonic.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_b.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_s_b"),
    Game.LoadCameraSet("placement/kdv/set_kdv_b_sonic.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_b")
  })
  Game.SetPlayer(-22612, 12458, -26085, 300, "sonic_new.lua")
end
function KingdomValley.SonicB.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area C")
end
function KingdomValley.SonicB.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics43")
  Game.Signal("impulsesphere01")
end
function KingdomValley.SonicB.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics52")
  Game.Signal("impulsesphere02")
end
function KingdomValley.SonicB.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics03")
  Game.Signal("objectphysics02")
end
function KingdomValley.SonicB.brake04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics87")
  Game.Signal("objectphysics88")
end
function KingdomValley.SonicB.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics89")
  Game.Signal("objectphysics90")
end
function KingdomValley.SonicB.brake06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.SonicB.brake07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function KingdomValley.SonicB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function KingdomValley.SonicB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function KingdomValley.SonicB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
end
function KingdomValley.SonicB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door04")
end
function KingdomValley.SonicB.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics51")
  Game.Signal("impulsesphere03")
end
