CrisisCity.ShadowF = inherits_from(ActionArea)
function CrisisCity.ShadowF.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.ShadowF")
end
function CrisisCity.ShadowF.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.ShadowF.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/csc/f/"),
    Game.LoadStageSet("scripts/mission/0102/set_cscF_shadow.XML"),
    Game.LoadStageSet("placement/csc/set_cscF_shadow_area.XML", "area"),
    Game.LoadStageSet("placement/csc/csc_mapF_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_f.lua"),
    Game.LoadPath("placement/csc/set_csc_f_shadow"),
    Game.LoadPath("placement/csc/grind_cscF_shadow", "grind"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_f")
  })
  Game.SetPlayer(16595, 2700, 1750, -100, "shadow.lua")
end
function CrisisCity.ShadowF.explosion_001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("bldgexplode01")
  Game.Signal("bldgexplode02")
  Game.Signal("bldgexplode03")
  Game.Signal("bldgexplode04")
  Game.Signal("bldgexplode05")
  Game.Signal("bldgexplode06")
  Game.Signal("bldgexplode07")
  Game.Signal("bldgexplode08")
end
function CrisisCity.ShadowF.StartPlaying(_ARG_0_)
end
function CrisisCity.ShadowF.t001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t001")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetname = "t001",
    time = 2.5
  })
end
function CrisisCity.ShadowF.t002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t002")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetname = "t002",
    time = 2.5
  })
end
function CrisisCity.ShadowF.t003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t003")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetname = "t003",
    time = 2.2
  })
end
function CrisisCity.ShadowF.t004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t004")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetname = "t004",
    time = 2
  })
end
function CrisisCity.ShadowF.t005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t005")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetname = "t005",
    time = 2
  })
end
function CrisisCity.ShadowF.t006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t006")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetname = "t006",
    time = 1.5
  })
end
function CrisisCity.ShadowF.t007(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("ShadowF:t007")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetname = "t007",
    time = 1.5
  })
end
