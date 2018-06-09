WaveOcean.TailsA = inherits_from(ActionArea)
function WaveOcean.TailsA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.TailsA")
end
function WaveOcean.TailsA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadStageSet("placement/wvo/set_wvoA_tails.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/wvo/wvo_s_a_grind", "grind"),
    Game.LoadPath("placement/wvo/wvo_s_a_tag_guide", "guide"),
    Game.LoadPath("placement/wvo/wvo_t_a"),
    Game.LoadStageSet("placement/wvo/dset_wvo_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_a", "pathobj"),
    Game.LoadStageSet("placement/wvo/set_wvoA_tails.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_a")
  })
  Game.SetPlayer(2168, 14154, 1656, 180, "tails.lua")
end
function WaveOcean.TailsA.orca01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca01")
end
function WaveOcean.TailsA.orca03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca03")
end
function WaveOcean.TailsA.orca04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca04")
end
function WaveOcean.TailsA.orca05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca05")
end
function WaveOcean.TailsA.orca06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca06")
end
