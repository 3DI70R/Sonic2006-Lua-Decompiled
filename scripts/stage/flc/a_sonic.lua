FlameCore.SonicA = inherits_from(ActionArea)
function FlameCore.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct FlameCore.SonicA")
end
function FlameCore.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("FlameCore.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_flc_a.lua"),
    Game.LoadTerrain("stage/flc/a/"),
    Game.LoadStageSet("placement/flc/set_flc_a_sonic.XML"),
    Game.LoadStageSet("placement/flc/flc_mapA_effects.xml", "particle"),
    Game.LoadStageSet("placement/flc/dset_flc_a.XML", "pathobj"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_a.lua"),
    Game.LoadPath("placement/flc/path_flcA_sonic"),
    Game.LoadPath("placement/flc/guide_flcA_sonic", "guide"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e")
  })
  Game.SetPlayer(-9352.521, 799.532, 38599.273, 180, "sonic_new.lua")
  Game.PlayBGM("stg_flc_a")
end
function FlameCore.SonicA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function FlameCore.SonicA.door_open03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.SonicA.door_open04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door02", "GateOpen")
end
function FlameCore.SonicA.door_open01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.SonicA.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door04", "GateOpen")
end
function FlameCore.SonicA.inclined01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge02")
end
function FlameCore.SonicA.inclined02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge01")
end
function FlameCore.SonicA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.SonicA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.SonicA.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.SonicA.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function FlameCore.SonicA.cage05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage05")
end
function FlameCore.SonicA.cage06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage06")
end
function FlameCore.SonicA.cage07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage07")
end
function FlameCore.SonicA.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.SonicA.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper17")
end
function FlameCore.SonicA.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper24")
end
function FlameCore.SonicA.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.SonicA.call_enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
