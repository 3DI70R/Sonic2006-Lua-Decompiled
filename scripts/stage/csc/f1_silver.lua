CrisisCity.SilverF1 = inherits_from(ActionArea)
function CrisisCity.SilverF1.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SilverF1")
end
function CrisisCity.SilverF1.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.SilverF1.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_csc_f.lua"),
    Game.LoadTerrain("stage/csc/f/"),
    Game.LoadStageSet("scripts/mission/0201/set_cscF1_silver.XML"),
    Game.LoadStageSet("placement/csc/csc_mapF_effects.xml", "particle"),
    Game.LoadStageSet("placement/csc/set_cscF1_silver_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_f.lua"),
    Game.LoadPath("scripts/mission/0201/path_cscF1_silver"),
    Game.LoadCameraSet("placement/csc/set_cscF_silver.XML"),
    Game.LoadCameraParam("placement/csc/cameraparam_silver_f.lua"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_a")
  })
  _ARG_0_:AddComponent({
    Game.CreateObjInfo("psimark"),
    Game.CreateObjInfo("csctornado")
  })
  Game.SetPlayer(17255, 0, -1173, -60, "silver.lua")
end
function CrisisCity.SilverF1.StartPlaying(_ARG_0_)
end
function CrisisCity.SilverF1.t001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t001")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 1, target = _ARG_1_})
end
function CrisisCity.SilverF1.t002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t002")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 11, target = _ARG_1_})
end
function CrisisCity.SilverF1.t003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t003")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 2, target = _ARG_1_})
end
function CrisisCity.SilverF1.t005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t005")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 2, target = _ARG_1_})
end
function CrisisCity.SilverF1.t006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t006")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {shootindex = 1, target = _ARG_1_})
end
function CrisisCity.SilverF1.esp01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath01")
  Game.ProcessMessage("physicspath01", "PsiEffect", {effect = true})
  Game.Signal("physicspath02")
  Game.ProcessMessage("physicspath02", "PsiEffect", {effect = true})
  Game.Signal("physicspath03")
  Game.ProcessMessage("physicspath03", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF1.esp02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath05")
  Game.ProcessMessage("physicspath05", "PsiEffect", {effect = true})
  Game.Signal("physicspath04")
  Game.ProcessMessage("physicspath04", "PsiEffect", {effect = true})
  Game.Signal("physicspath06")
  Game.ProcessMessage("physicspath06", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF1.esp03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath07")
  Game.ProcessMessage("physicspath07", "PsiEffect", {effect = true})
  Game.Signal("physicspath08")
  Game.ProcessMessage("physicspath08", "PsiEffect", {effect = true})
  Game.Signal("physicspath09")
  Game.ProcessMessage("physicspath09", "PsiEffect", {effect = true})
  Game.Signal("physicspath10")
  Game.ProcessMessage("physicspath10", "PsiEffect", {effect = true})
  Game.Signal("physicspath11")
  Game.ProcessMessage("physicspath11", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF1.esp04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath12")
  Game.ProcessMessage("physicspath12", "PsiEffect", {effect = true})
  Game.Signal("physicspath13")
  Game.ProcessMessage("physicspath13", "PsiEffect", {effect = true})
  Game.Signal("physicspath14")
  Game.ProcessMessage("physicspath14", "PsiEffect", {effect = true})
  Game.Signal("physicspath15")
  Game.ProcessMessage("physicspath15", "PsiEffect", {effect = true})
end
function CrisisCity.SilverF1.glassbreak001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics338")
  Game.Signal("impulsesphere01")
end
function CrisisCity.SilverF1.glassbreak002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics339")
  Game.Signal("impulsesphere02")
end
function CrisisCity.SilverF1.glassbreak003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics340")
  Game.Signal("impulsesphere03")
end
function CrisisCity.SilverF1.glassbreak004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics341")
  Game.Signal("impulsesphere04")
end
function CrisisCity.SilverF1.glassbreak005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics342")
  Game.Signal("objectphysics343")
  Game.Signal("impulsesphere05")
end
function CrisisCity.SilverF1.F1toB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
