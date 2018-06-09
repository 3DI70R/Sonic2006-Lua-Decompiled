RadicalTrain.SilverA = inherits_from(ActionArea)
function RadicalTrain.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.SilverA")
end
function RadicalTrain.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("RadicalTrain.SilverA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_rct_a.lua"),
    Game.LoadTerrain("stage/rct/a/"),
    Game.LoadStageSet("scripts/mission/0210/set_rctA_silver.XML"),
    Game.LoadStageSet("placement/rct/set_rctA_silver_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_a.lua"),
    Game.LoadPath("placement/rct/path_rctA_silver"),
    Game.LoadPath("placement/rct/guide_rctA_silver", "guide"),
    Game.LoadSoundBank("sound/stage_rct"),
    Game.LoadVoiceBank("sound/voice_rct_e"),
    Game.PlayBGM("stg_rct_a")
  })
end
function RadicalTrain.SilverA.StartPlaying(_ARG_0_)
end
function RadicalTrain.SilverA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function RadicalTrain.SilverA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function RadicalTrain.SilverA.cage03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function RadicalTrain.SilverA.cage04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage04")
end
function RadicalTrain.SilverA.enemy_set01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function RadicalTrain.SilverA.enemy_set02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper23")
end
function RadicalTrain.SilverA.enemy_set03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper20")
end
function RadicalTrain.SilverA.enemy_set04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper24")
end
function RadicalTrain.SilverA.enemy_set05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper25")
end
function RadicalTrain.SilverA.enemy_set06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper05")
end
function RadicalTrain.SilverA.enemy_set07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper26")
end
function RadicalTrain.SilverA.enemy_set08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper27")
end
function RadicalTrain.SilverA.enemy_set09(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper29")
end
function RadicalTrain.SilverA.train_start04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train03", "Go")
  Game.ProcessMessage("area:freight_train03", "Horn")
  Game.ProcessMessage("area:freight_train06", "Go")
  Game.ProcessMessage("area:freight_train06", "Horn")
end
function RadicalTrain.SilverA.train_start05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train04", "Go")
  Game.ProcessMessage("area:freight_train05", "Go")
  Game.ProcessMessage("area:freight_train04", "Horn")
  Game.ProcessMessage("area:freight_train05", "Horn")
end
function RadicalTrain.SilverA.train_start06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Go")
  Game.ProcessMessage("area:freight_train02", "Go")
  Game.ProcessMessage("area:freight_train01", "Horn")
  Game.ProcessMessage("area:freight_train02", "Horn")
end
function RadicalTrain.SilverA.train_stop(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Stop")
  Game.ProcessMessage("area:freight_train02", "Stop")
  Game.ProcessMessage("area:freight_train03", "Stop")
  Game.ProcessMessage("area:freight_train04", "Stop")
  Game.ProcessMessage("area:freight_train05", "Stop")
  Game.ProcessMessage("area:freight_train06", "Stop")
end
