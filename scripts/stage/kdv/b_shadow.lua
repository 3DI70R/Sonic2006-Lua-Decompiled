KingdomValley.ShadowB = inherits_from(ActionArea)
function KingdomValley.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.ShadowB")
end
function KingdomValley.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/b/"),
    Game.LoadStageSet("scripts/mission/0101/set_kdv_b_shadow.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_b.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_shadow_b"),
    Game.LoadCameraSet("placement/kdv/set_kdv_b_shadow.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_c")
  })
  Game.SetPlayer(-22612, 12458, -26085, 300, "shadow.lua")
end
function KingdomValley.ShadowB.goto_c(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area C")
end
function KingdomValley.ShadowB.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics52")
  Game.Signal("impulsesphere01")
end
function KingdomValley.ShadowB.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics55")
  Game.Signal("impulsesphere02")
end
function KingdomValley.ShadowB.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics03")
  Game.Signal("objectphysics02")
end
function KingdomValley.ShadowB.brake04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics87")
  Game.Signal("objectphysics88")
end
function KingdomValley.ShadowB.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics89")
  Game.Signal("objectphysics90")
end
function KingdomValley.ShadowB.brake06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.ShadowB.brake07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function KingdomValley.ShadowB.open_cage(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function KingdomValley.ShadowB.open_cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function KingdomValley.ShadowB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
end
function KingdomValley.ShadowB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function KingdomValley.ShadowB.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function KingdomValley.ShadowB.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics51")
  Game.Signal("impulsesphere03")
end
