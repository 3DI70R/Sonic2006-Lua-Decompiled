WaveOcean.SilverA = inherits_from(ActionArea)
function WaveOcean.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.SilverA")
end
function WaveOcean.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadStageSet("scripts/mission/0201/set_wvoA_silver.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/wvo/wvo_s_a_grind", "grind"),
    Game.LoadPath("placement/wvo/wvo_silver_a"),
    Game.LoadPath("placement/wvo/wvo_silver_a_guide", "guide"),
    Game.LoadStageSet("placement/wvo/dset_wvo_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_a", "pathobj"),
    Game.LoadStageSet("scripts/mission/0201/set_wvoA_silver.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_a")
  })
  Game.SetPlayer(2168, 14154, 1656, 180, "blaze.lua")
end
function WaveOcean.SilverA.orca01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca01")
end
function WaveOcean.SilverA.orca03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca03")
end
function WaveOcean.SilverA.orca04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca04")
end
function WaveOcean.SilverA.orca05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca05")
end
function WaveOcean.SilverA.orca06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca06")
end
