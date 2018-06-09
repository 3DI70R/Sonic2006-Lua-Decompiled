CrisisCity.SonicE = inherits_from(ActionArea)
function CrisisCity.SonicE.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.SonicE")
end
function CrisisCity.SonicE.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("CrisisCity.SonicE.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_lightmap.lua"),
    Game.LoadTerrain("stage/csc/e/"),
    Game.LoadStageSet("placement/csc/set_cscE_sonic.xml"),
    Game.LoadStageSet("placement/csc/set_cscE_sonic_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/csc/scene_csc_e.lua"),
    Game.LoadPath("placement/csc/path_cscE_sonic"),
    Game.LoadPath("placement/csc/guide_cscE_sonic", "guide"),
    Game.LoadCameraParam("placement/csc/cameraparam_sonic_e.lua"),
    Game.LoadSoundBank("sound/stage_csc"),
    Game.LoadVoiceBank("sound/voice_csc_e"),
    Game.PlayBGM("stage_csc_e")
  })
  Game.SetPlayer(-199500, 11100, 0, 90, "sonic_fast.lua")
  Game.SetGenArea({
    size = {
      300 * 100,
      100 * 100,
      30 * 100
    },
    offset = {
      100 * 100,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.StartPlaying(_ARG_0_)
end
function CrisisCity.SonicE.car001(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SonicE:car001")
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      -1700,
      0,
      -300
    }
  })
end
function CrisisCity.SonicE.car002(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SonicE:car002")
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      1700,
      300,
      100
    }
  })
end
function CrisisCity.SonicE.car003(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Log("SonicE:car003")
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1900,
      300,
      0
    }
  })
end
function CrisisCity.SonicE.car004(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      1700,
      300,
      0
    }
  })
end
function CrisisCity.SonicE.car005(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      1700,
      400,
      200
    }
  })
end
function CrisisCity.SonicE.car006(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      1900,
      400,
      -400
    }
  })
end
function CrisisCity.SonicE.car007(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      800
    }
  })
end
function CrisisCity.SonicE.car011(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      -1000
    }
  })
end
function CrisisCity.SonicE.car012(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      0
    }
  })
end
function CrisisCity.SonicE.car013(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      -500
    }
  })
end
function CrisisCity.SonicE.car014(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      500
    }
  })
end
function CrisisCity.SonicE.car008(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      2200,
      500,
      -200
    }
  })
end
function CrisisCity.SonicE.car009(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2000,
      500,
      0
    }
  })
end
function CrisisCity.SonicE.car010(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      2000,
      500,
      200
    }
  })
end
function CrisisCity.SonicE.car015(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      -1000,
      -200,
      200
    }
  })
end
function CrisisCity.SonicE.car016(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      -600,
      -100,
      -200
    }
  })
end
function CrisisCity.SonicE.car017(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      -1600,
      -200,
      600
    }
  })
end
function CrisisCity.SonicE.car018(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car019(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car021(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car023(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car026(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      -600,
      -100,
      -200
    }
  })
end
function CrisisCity.SonicE.car027(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      -1600,
      -200,
      600
    }
  })
end
function CrisisCity.SonicE.car028(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car029(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car030(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car031(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car032(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car033(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car034(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car035(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car036(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car037(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car038(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car039(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car040(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car041(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car042(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 3,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car043(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car044(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 2,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.car045(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 1,
    target = _ARG_1_,
    targetpos = {
      0,
      0,
      0
    }
  })
end
function CrisisCity.SonicE.trailer001(_ARG_0_, _ARG_1_, _ARG_2_)
  Game.ProcessMessage("area:tornado01", "TornadoShoot", {
    shootindex = 0,
    target = _ARG_1_,
    targetpos = {
      160014,
      10974.157,
      0
    }
  })
end
function CrisisCity.SonicE.billboard001(_ARG_0_, _ARG_1_)
  _ARG_0_.flybillboard = Game.NewActor("cscflybillboard", {
    appeartime = 0,
    disappeartime = 0,
    pathspd = 1000,
    path = "line_path001"
  })
end
function CrisisCity.SonicE.billboard002(_ARG_0_, _ARG_1_)
  _ARG_0_.flybillboard = Game.NewActor("cscflybillboard", {
    appeartime = 0,
    disappeartime = 0,
    pathspd = 1000,
    path = "line_path002"
  })
end
