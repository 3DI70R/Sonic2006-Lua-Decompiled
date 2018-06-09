RadicalTrain.ShadowB = inherits_from(ActionArea)
function RadicalTrain.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.ShadowB")
end
function RadicalTrain.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("RadicalTrain.ShadowB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_rct_b.lua"),
    Game.LoadTerrain("stage/rct/b/"),
    Game.LoadStageSet("scripts/mission/0105/set_rctB_shadow.xml"),
    Game.LoadStageSet("placement/rct/set_rctB_shadow_area.xml", "area"),
    Game.LoadStageSet("placement/rct/rct_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_b.lua"),
    Game.LoadPath("placement/rct/path_rctB_shadow"),
    Game.LoadCameraSet("placement/rct/set_rctB_shadow.xml"),
    Game.LoadSoundBank("sound/stage_rct"),
    Game.LoadVoiceBank("sound/voice_rct_e"),
    Game.PlayBGM("stg_rct_b")
  })
  Game.SetGenArea({
    size = {
      300 * 100,
      60 * 100,
      300 * 100
    }
  })
end
function RadicalTrain.ShadowB.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Go")
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowB.train_start02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Go")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowB.train_horn01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowB.train_camera01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Camera")
  Game.ProcessMessage("area:eggman_train02", "Fast")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowB.train_bust01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Bomb")
end
function RadicalTrain.ShadowB.train_start05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train04", "Go")
  Game.ProcessMessage("area:freight_train05", "Go")
  Game.ProcessMessage("area:freight_train04", "Horn")
  Game.ProcessMessage("area:freight_train05", "Horn")
end
function RadicalTrain.ShadowB.train_start04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Go")
  Game.ProcessMessage("area:freight_train02", "Go")
  Game.ProcessMessage("area:freight_train03", "Go")
  Game.ProcessMessage("area:freight_train01", "Horn")
  Game.ProcessMessage("area:freight_train02", "Horn")
  Game.ProcessMessage("area:freight_train03", "Horn")
end
function RadicalTrain.ShadowB.train_stop(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Stop")
  Game.ProcessMessage("area:freight_train02", "Stop")
  Game.ProcessMessage("area:freight_train03", "Stop")
  Game.ProcessMessage("area:freight_train04", "Stop")
  Game.ProcessMessage("area:freight_train05", "Stop")
end
function RadicalTrain.ShadowB.enemy_set01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function RadicalTrain.ShadowB.enemy_set02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper02")
end
function RadicalTrain.ShadowB.enemy_set03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function RadicalTrain.ShadowB.enemy_set04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
