WaveOcean.SonicA = inherits_from(ActionArea)
function WaveOcean.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.SonicA")
end
function WaveOcean.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadStageSet("placement/wvo/set_wvoA_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/wvo/wvo_s_a"),
    Game.LoadPath("placement/wvo/wvo_s_a_grind", "grind"),
    Game.LoadPath("placement/wvo/wvo_s_a_guide", "guide"),
    Game.LoadStageSet("placement/wvo/dset_wvo_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_a", "pathobj"),
    Game.LoadCameraSet("placement/wvo/set_wvoA_sonic.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_a")
  })
  Game.SetPlayer(44068, 9483, 28589, 263, "sonic_new.lua")
  Game.SetPlayer(-5354, 13929, 1644, 180, "tails.lua", 1, true)
  Game.SetGenArea({
    size = {
      100 * 100,
      120 * 100,
      120 * 100
    },
    border = 60 * 100
  })
end
function WaveOcean.SonicA.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function WaveOcean.SonicA.orca01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca01")
end
function WaveOcean.SonicA.orca02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca03")
end
function WaveOcean.SonicA.orca03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca04")
end
function WaveOcean.SonicA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("wvo_doorB01", "GateClose")
  Game.StartEntityByName("GroupHelper11")
  Game.ProcessMessage("wvo_orca02", "GateClose")
end
function WaveOcean.SonicA.camera_on(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("GroupHelper11")
end
function WaveOcean.SonicA.goto_b(_ARG_0_, _ARG_1_)
  Game.Debug()
  _ARG_0_:ChangeArea("Area B")
end
