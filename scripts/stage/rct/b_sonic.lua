RadicalTrain.SonicB = inherits_from(ActionArea)
function RadicalTrain.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.SonicB")
end
function RadicalTrain.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("RadicalTrain.SonicB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test_lightmap.lua"),
    Game.LoadTerrain("stage/rct/b/"),
    Game.LoadStageSet("placement/rct/set_rctB_sonic.xml"),
    Game.LoadStageSet("placement/rct/set_rctB_sonic_area.xml", "area"),
    Game.LoadStageSet("placement/rct/rct_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_b.lua"),
    Game.LoadPath("placement/rct/path_rctB_sonic"),
    Game.LoadCameraSet("placement/rct/set_rctB_sonic.xml"),
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
function RadicalTrain.SonicB.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Go")
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.SonicB.train_start02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Go")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.SonicB.train_horn01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.SonicB.train_cut01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Cut")
end
function RadicalTrain.SonicB.train_cut02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Cut")
end
function RadicalTrain.SonicB.train_cut03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Cut")
end
function RadicalTrain.SonicB.train_cut04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Cut")
end
function RadicalTrain.SonicB.train_start05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train04", "Go")
  Game.ProcessMessage("area:freight_train05", "Go")
  Game.ProcessMessage("area:freight_train04", "Horn")
  Game.ProcessMessage("area:freight_train05", "Horn")
end
function RadicalTrain.SonicB.train_stop01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train04", "Stop")
  Game.ProcessMessage("area:freight_train05", "Stop")
end
function RadicalTrain.SonicB.train_start04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train02", "Go")
  Game.ProcessMessage("area:freight_train03", "Go")
  Game.ProcessMessage("area:freight_train02", "Horn")
  Game.ProcessMessage("area:freight_train03", "Horn")
end
function RadicalTrain.SonicB.train_stop02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train02", "Stop")
  Game.ProcessMessage("area:freight_train03", "Stop")
end
function RadicalTrain.SonicB.enemy_set01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper01")
end
function RadicalTrain.SonicB.enemy_set02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper02")
end
function RadicalTrain.SonicB.enemy_set03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
