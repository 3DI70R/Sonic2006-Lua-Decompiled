CrisisCity.SilverF2 = inherits_from(ActionArea)
function CrisisCity.SilverF2.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SilverF2")
end
function CrisisCity.SilverF2.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.SilverF2.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_csc_f.lua"),
    Game.LoadTerrain("stage/csc/f/"),
    Game.LoadStageSet("scripts/mission/0201/set_cscF2_silver.XML"),
    Game.LoadStageSet("placement/csc/csc_mapF_effects.xml", "particle"),
    Game.LoadStageSet("placement/csc/set_cscF2_silver_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_f.lua"),
    Game.LoadPath("placement/csc/path_cscF_silver"),
    Game.LoadCameraSet("placement/csc/set_cscF_silver.XML"),
    Game.LoadCameraParam("placement/csc/cameraparam_silver_f.lua"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stg_csc_f")
  })
  _ARG_0_:AddComponent({
    Game.CreateObjInfo("psimark"),
    Game.CreateObjInfo("csctornado")
  })
  Game.SetPlayer(-65530, -376, -14821.5, 45, "silver.lua")
end
function CrisisCity.SilverF2.StartPlaying(_ARG_0_)
end
function CrisisCity.SilverF2.t001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t001")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1100,
      0,
      1900
    }
  })
end
function CrisisCity.SilverF2.t002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t002")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      1800,
      0,
      700
    }
  })
end
function CrisisCity.SilverF2.t003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t003")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      700,
      0,
      1300
    }
  })
end
function CrisisCity.SilverF2.t004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t004")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      1200,
      0,
      200
    }
  })
end
function CrisisCity.SilverF2.t005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t005")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      900,
      0,
      1200
    }
  })
end
function CrisisCity.SilverF2.t006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t006")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1200,
      0,
      600
    }
  })
end
function CrisisCity.SilverF2.t007(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t007")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1500,
      0,
      -500
    }
  })
end
function CrisisCity.SilverF2.t008(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t008")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2000,
      0,
      0
    }
  })
end
function CrisisCity.SilverF2.t009(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t009")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2200,
      100,
      -300
    }
  })
end
function CrisisCity.SilverF2.t010(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t010")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      1800,
      0,
      300
    }
  })
end
function CrisisCity.SilverF2.t011(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t011")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      1000,
      0,
      1300
    }
  })
end
function CrisisCity.SilverF2.t012(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t012")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      2300,
      200,
      -600
    }
  })
end
function CrisisCity.SilverF2.t013(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t013")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      600,
      0,
      1000
    }
  })
end
function CrisisCity.SilverF2.t014(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t014")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1300,
      300,
      1000
    }
  })
end
function CrisisCity.SilverF2.t015(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t015")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2500,
      -100,
      1000
    }
  })
end
function CrisisCity.SilverF2.t016(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SilverF:t016")
  Game.ProcessMessage("area:csctornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2200,
      -100,
      600
    }
  })
end
function CrisisCity.SilverF2.hint01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_05"})
end
function CrisisCity.SilverF2.hint02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_07"})
end
function CrisisCity.SilverF2.hint03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_08"})
end
function CrisisCity.SilverF2.hint04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_09"})
end
function CrisisCity.SilverF2.hint05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_10"})
end
function CrisisCity.SilverF2.hint06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_06"})
end
