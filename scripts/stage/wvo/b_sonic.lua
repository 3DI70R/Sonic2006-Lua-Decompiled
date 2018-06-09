WaveOcean.SonicB = inherits_from(ActionArea)
function WaveOcean.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.SonicB")
end
function WaveOcean.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_kdv_c.lua"),
    Game.LoadTerrain("stage/wvo/b/"),
    Game.LoadStageSet("placement/wvo/set_wvoB_sonic.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_b.lua"),
    Game.LoadPath("placement/wvo/wvo_s_b"),
    Game.LoadPath("placement/wvo/wvo_s_b_guide", "guide"),
    Game.LoadStageSet("placement/wvo/dset_wvo_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_b", "pathobj"),
    Game.LoadCameraParam("placement/wvo/cameraparam_sonic_b.lua"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_b")
  })
  Game.SetPlayer(0, 0, 0, 180, "sonic_fast.lua")
  Game.SetGenArea({
    size = {
      100 * 100,
      120 * 100,
      120 * 100
    },
    offset = {
      -40 * 100,
      0,
      0
    },
    border = 60 * 100
  })
end
function WaveOcean.SonicB.move(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("wvo_battleship01", "Shoot", {target = _ARG_1_})
end
