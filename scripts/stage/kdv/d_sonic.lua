KingdomValley.SonicD = inherits_from(ActionArea)
function KingdomValley.SonicD.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.SonicD")
end
function KingdomValley.SonicD.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/d/"),
    Game.LoadStageSet("placement/kdv/set_kdv_d_sonic.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapD_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_d.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_d_sonic.XML", "pathobj"),
    Game.LoadPath("placement/kdv/kdv_sonic_d"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_d")
  })
  Game.SetPlayer(11788, 1411, 13690, 160, "venice.lua")
end
function KingdomValley.SonicD.esp002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("espstairs_left01")
  Game.ProcessMessage("espstairs_left01", "PsiEffect", {effect = true})
end
function KingdomValley.SonicD.iwa001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere01")
end
function KingdomValley.SonicD.iwa002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("impulsesphere02")
end
function KingdomValley.SonicD.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
end
function KingdomValley.SonicD.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function KingdomValley.SonicD.esp001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath01")
  Game.ProcessMessage("physicspath01", "PsiEffect", {effect = true})
  Game.Signal("physicspath02")
  Game.ProcessMessage("physicspath02", "PsiEffect", {effect = true})
  Game.Signal("physicspath03")
  Game.ProcessMessage("physicspath03", "PsiEffect", {effect = true})
  Game.Signal("physicspath04")
  Game.ProcessMessage("physicspath04", "PsiEffect", {effect = true})
  Game.Signal("physicspath05")
  Game.ProcessMessage("physicspath05", "PsiEffect", {effect = true})
end
function KingdomValley.SonicD.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door04")
end
function KingdomValley.SonicD.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("kdv_door02", "GateClose")
end
