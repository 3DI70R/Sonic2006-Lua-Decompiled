CrisisCity.SilverF = inherits_from(ActionArea)
function CrisisCity.SilverF.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SilverF")
end
function CrisisCity.SilverF.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.SilverF.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_csc_f.lua"),
    Game.LoadTerrain("stage/csc/f/"),
    Game.LoadStageSet("placement/csc/set_csc_f_venice.XML"),
    Game.LoadStageSet("placement/csc/csc_mapF_effects.xml", "particle"),
    Game.LoadStageSet("placement/csc/set_csc_f_venice_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_f.lua"),
    Game.LoadPath("placement/csc/set_csc_f_sonic"),
    Game.LoadCameraSet("placement/csc/set_csc_f_Venice.XML"),
    Game.LoadCameraParam("placement/csc/cameraparam_silver_f.lua"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e")
  })
  _ARG_0_:AddComponent({
    Game.CreateObjInfo("psimark"),
    Game.CreateObjInfo("csctornado")
  })
  Game.SetPlayer(17255, 0, -1173, -60, "silver.lua")
end
function CrisisCity.SilverF.StartPlaying(_ARG_0_)
end
function CrisisCity.SilverF.t001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t001")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 1, target = _ARG_1_})
end
function CrisisCity.SilverF.t002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t002")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 11, target = _ARG_1_})
end
function CrisisCity.SilverF.t003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t003")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 2, target = _ARG_1_})
end
function CrisisCity.SilverF.t005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t005")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 2, target = _ARG_1_})
end
function CrisisCity.SilverF.t006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t006")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 1, target = _ARG_1_})
end
function CrisisCity.SilverF.esp01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath01")
  Game.ProcessMessage("physicspath01", "PsiEffect", {effect = true})
  Game.Signal("physicspath02")
  Game.ProcessMessage("physicspath02", "PsiEffect", {effect = true})
  Game.Signal("physicspath03")
  Game.ProcessMessage("physicspath03", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF.esp02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath05")
  Game.ProcessMessage("physicspath05", "PsiEffect", {effect = true})
  Game.Signal("physicspath04")
  Game.ProcessMessage("physicspath04", "PsiEffect", {effect = true})
  Game.Signal("physicspath06")
  Game.ProcessMessage("physicspath06", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF.glassbreak001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics338")
  Game.Signal("impulsesphere01")
end
function CrisisCity.SilverF.glassbreak002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics339")
  Game.Signal("impulsesphere02")
end
function CrisisCity.SilverF.glassbreak003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics340")
  Game.Signal("impulsesphere03")
end
function CrisisCity.SilverF.glassbreak004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics341")
  Game.Signal("impulsesphere04")
end
function CrisisCity.SilverF.glassbreak005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics342")
  Game.Signal("objectphysics343")
  Game.Signal("impulsesphere05")
end
function CrisisCity.SilverF.hint01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_05"})
end
function CrisisCity.SilverF.hint02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_07"})
end
function CrisisCity.SilverF.hint03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_08"})
end
function CrisisCity.SilverF.hint04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_09"})
end
function CrisisCity.SilverF.hint05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_10"})
end
function CrisisCity.SilverF.hint06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_06"})
end
