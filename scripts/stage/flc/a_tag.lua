FlameCore.TagA = inherits_from(ActionArea)
function FlameCore.TagA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("FlameCore.TagA:constructor")
end
function FlameCore.TagA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/flc/a/"),
    Game.LoadPath("placement/flc/path_flcA_sonic"),
    Game.LoadPath("placement/flc/guide_flcA_sonic", "guide"),
    Game.LoadSceneParams("scripts/stage/flc/scene_flc_a.lua"),
    Game.LoadStageSet("placement/flc/dset_flc_a.XML", "pathobj"),
    Game.LoadStageSet("placement/flc/flc_mapA_effects.xml", "particle"),
    Game.LoadStageSet("scripts/mission/3000/set_flc_a_tag.XML"),
    Game.LoadSoundBank("sound/stage_flc"),
    Game.LoadVoiceBank("sound/voice_flc_e"),
    Game.PlayBGM("stg_flc_a")
  })
  Game.SetGenArea({
    size = {
      60 * 100,
      60 * 100,
      60 * 100
    },
    offset = {
      0,
      0,
      0
    },
    border = 20 * 100
  })
  Game.SetPlayer(0, 0, 0, 0, "sonic_new.lua", 0)
  Game.SetPlayer(0, 0, 0, 0, "shadow.lua", 1)
  Game.Log("FlameCore.TagA:Setup")
end
function FlameCore.TagA.door_open03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door01", "GateOpen")
end
function FlameCore.TagA.door_open04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door02", "GateOpen")
end
function FlameCore.TagA.door_open01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door03", "GateOpen")
end
function FlameCore.TagA.door_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("flc_door04", "GateOpen")
end
function FlameCore.TagA.inclined01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge02")
end
function FlameCore.TagA.inclined02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedstonebridge01")
end
function FlameCore.TagA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function FlameCore.TagA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function FlameCore.TagA.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function FlameCore.TagA.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function FlameCore.TagA.cage05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage05")
end
function FlameCore.TagA.cage06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage06")
end
function FlameCore.TagA.cage07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage07")
end
function FlameCore.TagA.call_enemy01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper13")
end
function FlameCore.TagA.call_enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper17")
end
function FlameCore.TagA.call_enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper24")
end
function FlameCore.TagA.call_enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function FlameCore.TagA.call_enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function FlameCore.TagA.laser01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
end
function FlameCore.TagA.laser01_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateClose")
  Game.ProcessMessage("common_laser02", "GateClose")
end
function FlameCore.TagA.laser10(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateOpen")
  Game.ProcessMessage("common_laser04", "GateOpen")
end
function FlameCore.TagA.laser10_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateClose")
  Game.ProcessMessage("common_laser04", "GateClose")
end
