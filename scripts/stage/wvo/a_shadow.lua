WaveOcean.ShadowA = inherits_from(ActionArea)
function WaveOcean.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.ShadowA")
end
function WaveOcean.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wvo/a/"),
    Game.LoadStageSet("scripts/mission/0107/set_wvoA_shadow.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_a.lua"),
    Game.LoadPath("placement/wvo/wvo_s_a_grind", "grind"),
    Game.LoadPath("placement/wvo/wvo_shadow_a"),
    Game.LoadPath("placement/wvo/wvo_shaow_a_guide", "guide"),
    Game.LoadStageSet("placement/wvo/dset_wvo_a_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_a", "pathobj"),
    Game.LoadCameraSet("placement/wvo/set_wvoA_shadow.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_a")
  })
  Game.SetPlayer(14706, 75, -144613, 180, "omega.lua")
  Game.SetPlayer(-5354, 13929, 1644, 180, "shadow.lua", 1, true)
end
function WaveOcean.ShadowA.open_cage(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function WaveOcean.ShadowA.orca01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca04")
end
function WaveOcean.ShadowA.orca02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_orca03")
end
function WaveOcean.ShadowA.open_cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function WaveOcean.ShadowA.open_cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function WaveOcean.ShadowA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wvo_doorA02")
end
