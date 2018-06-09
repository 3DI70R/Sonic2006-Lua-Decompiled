WaveOcean.ShadowB = inherits_from(ActionArea)
function WaveOcean.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WaveOcean.ShadowB")
end
function WaveOcean.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wvo/b/"),
    Game.LoadStageSet("scripts/mission/0107/set_wvoB_shadow.XML"),
    Game.LoadSceneParams("scripts/stage/wvo/scene_wvo_b.lua"),
    Game.LoadPath("placement/wvo/wvo_shadow_b"),
    Game.LoadStageSet("placement/wvo/dset_wvo_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/wvo/d_wvo_s_b", "pathobj"),
    Game.LoadCameraSet("placement/wvo/set_wvoB_shadow.XML"),
    Game.LoadSoundBank("sound/stage_wvo"),
    Game.LoadVoiceBank("sound/voice_wvo_e"),
    Game.PlayBGM("stg_wvo_b")
  })
  Game.SetPlayer(0, 0, 0, 180, "shadow.lua")
end
function WaveOcean.ShadowB.goto_a(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area A")
end
function WaveOcean.ShadowB.brake01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics02")
end
function WaveOcean.ShadowB.brake02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics35")
end
function WaveOcean.ShadowB.brake03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics49")
end
function WaveOcean.ShadowB.brake04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics50")
end
function WaveOcean.ShadowB.brake05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics06")
end
