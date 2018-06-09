KingdomValley.TagA = inherits_from(ActionArea)
function KingdomValley.TagA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("KingdomValley.TagA:constructor")
end
function KingdomValley.TagA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/kdv/a/"),
    Game.LoadPath("placement/kdv/kdv_s_a"),
    Game.LoadPath("placement/kdv/kdv_s_a_grind", "grind"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_a.lua"),
    Game.LoadStageSet("placement/kdv/dset_kdv_a_sonic.XML", "pathobj"),
    Game.LoadStageSet("placement/kdv/kdv_mapA_effects.xml", "particle"),
    Game.LoadStageSet("scripts/mission/3000/set_kdv_a_tag.XML"),
    Game.LoadCameraSet("placement/kdv/set_kdv_a_sonic.XML"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_a")
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
  Game.Log("KingdomValley.TagA:Setup")
end
function KingdomValley.TagA.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge01")
end
function KingdomValley.TagA.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge03")
end
function KingdomValley.TagA.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("inclinedbridge02")
end
function KingdomValley.TagA.laser01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser17", "GateOpen")
  Game.ProcessMessage("common_laser18", "GateOpen")
  Game.ProcessMessage("common_laser19", "GateOpen")
  Game.ProcessMessage("common_laser20", "GateOpen")
  Game.ProcessMessage("common_laser21", "GateOpen")
  Game.ProcessMessage("common_laser22", "GateOpen")
end
function KingdomValley.TagA.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser09", "GateOpen")
  Game.ProcessMessage("common_laser10", "GateOpen")
end
function KingdomValley.TagA.laser03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
  Game.ProcessMessage("common_laser13", "GateOpen")
  Game.ProcessMessage("common_laser14", "GateOpen")
  Game.ProcessMessage("common_laser15", "GateOpen")
  Game.ProcessMessage("common_laser16", "GateOpen")
end
