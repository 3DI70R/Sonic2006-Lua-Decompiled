KingdomValley.SilverB = inherits_from(ActionArea)
function KingdomValley.SilverB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.SilverB")
end
function KingdomValley.SilverB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/b/"),
    Game.LoadStageSet("scripts/mission/0211/set_kdv_b_silver.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_b.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_silver_b"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_c")
  })
  Game.SetPlayer(-22612, 12458, -26085, 300, "sonic_new.lua")
  Game.SetPlayer(-5354, 13929, 1644, 180, "silver.lua", 1, true)
end
function KingdomValley.SilverB.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics43")
  Game.Signal("impulsesphere01")
end
function KingdomValley.SilverB.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics52")
  Game.Signal("impulsesphere02")
end
function KingdomValley.SilverB.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics03")
  Game.Signal("objectphysics02")
end
function KingdomValley.SilverB.brake04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics87")
  Game.Signal("objectphysics88")
end
function KingdomValley.SilverB.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics89")
  Game.Signal("objectphysics90")
end
function KingdomValley.SilverB.brake06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.SilverB.brake07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function KingdomValley.SilverB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function KingdomValley.SilverB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function KingdomValley.SilverB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
end
function KingdomValley.SilverB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door04")
end
function KingdomValley.SilverB.espstairs01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("espstairs_right01")
  Game.ProcessMessage("espstairs_right01", "PsiEffect", {effect = true})
end
