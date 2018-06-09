WaveOcean.TagA = inherits_from(ActionArea)
function WaveOcean.TagA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("WaveOcean.TagA:constructor")
end
function WaveOcean.TagA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadPath("scripts/mission/3000/wvo_tag_s_a.path"),
    Game.LoadPath("placement/wvo/wvo_s_a_grind", "grind"),
    Game.LoadPath("placement/wvo/wvo_s_a_tag_guide", "guide"),
    Game.LoadPath("placement/wvo/d_wvo_s_a", "pathobj"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadStageSet("placement/wvo/dset_wvo_a_sonic.XML", "pathobj"),
    Game.LoadStageSet("scripts/mission/3000/set_wvo_a_tag.XML"),
    Game.LoadCameraSet("placement/wvo/set_wvoA_sonic.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_a")
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
  Game.Log("WaveOcean.TagA:Setup")
end
function WaveOcean.TagA.orca01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca01")
end
function WaveOcean.TagA.orca03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca07")
end
function WaveOcean.TagA.orca04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca04")
end
function WaveOcean.TagA.orca05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca05")
end
function WaveOcean.TagA.orca06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca06")
end
function WaveOcean.TagA.orca08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca08")
end
function WaveOcean.TagA.laser01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateOpen")
  Game.ProcessMessage("common_laser04", "GateOpen")
end
function WaveOcean.TagA.laser01_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateClose")
  Game.ProcessMessage("common_laser04", "GateClose")
end
function WaveOcean.TagA.laser03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
end
function WaveOcean.TagA.laser02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser05", "GateOpen")
  Game.ProcessMessage("common_laser06", "GateOpen")
end
function WaveOcean.TagA.laser02_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser05", "GateClose")
  Game.ProcessMessage("common_laser06", "GateClose")
end
function WaveOcean.TagA.laser04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
  Game.ProcessMessage("common_laser09", "GateOpen")
  Game.ProcessMessage("common_laser10", "GateOpen")
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function WaveOcean.TagA.laser04_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateClose")
  Game.ProcessMessage("common_laser08", "GateClose")
  Game.ProcessMessage("common_laser09", "GateClose")
  Game.ProcessMessage("common_laser10", "GateClose")
  Game.ProcessMessage("common_laser11", "GateClose")
  Game.ProcessMessage("common_laser12", "GateClose")
end
function WaveOcean.TagA.cage01(_ARG_0_, _ARG_1_)
  Game.Signal("common_cage01")
end
