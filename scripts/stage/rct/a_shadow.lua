RadicalTrain.ShadowA = inherits_from(ActionArea)
function RadicalTrain.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.ShadowA")
end
function RadicalTrain.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("RadicalTrain.ShadowA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_rct_a.lua"),
    Game.LoadTerrain("stage/rct/a/"),
    Game.LoadStageSet("scripts/mission/0105/set_rctA_shadow.xml"),
    Game.LoadStageSet("placement/rct/set_rctA_shadow_area.xml", "area"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_a.lua"),
    Game.LoadPath("placement/rct/path_rctA_shadow"),
    Game.LoadPath("placement/rct/grind_rctA_shadow", "grind"),
    Game.LoadPath("placement/rct/guide_rctA_shadow", "guide"),
    Game.LoadCameraSet("placement/rct/set_rctA_shadow.xml"),
    Game.LoadSoundBank("sound/stage_rct"),
    Game.LoadVoiceBank("sound/voice_rct_e"),
    Game.PlayBGM("stg_rct_a")
  })
end
function RadicalTrain.ShadowA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function RadicalTrain.ShadowA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function RadicalTrain.ShadowA.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function RadicalTrain.ShadowA.enemy_set01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper12")
end
function RadicalTrain.ShadowA.enemy_set02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function RadicalTrain.ShadowA.enemy_set03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper15")
end
function RadicalTrain.ShadowA.enemy_set04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper16")
end
function RadicalTrain.ShadowA.enemy_set05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper17")
end
function RadicalTrain.ShadowA.enemy_set06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper18")
end
function RadicalTrain.ShadowA.enemy_set07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper19")
end
function RadicalTrain.ShadowA.enemy_set08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper20")
end
function RadicalTrain.ShadowA.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Go")
  Game.ProcessMessage("area:common_laser01", "GateOpen")
  Game.ProcessMessage("area:common_laser02", "GateOpen")
  Game.ProcessMessage("area:common_object_event01", "GateClose")
  Game.ProcessMessage("area:common_object_event03", "GateOpen")
  Game.ProcessMessage("area:common_object_event04", "GateOpen")
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowA.door_open01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:common_laser01", "GateClose")
  Game.ProcessMessage("area:common_laser02", "GateClose")
  Game.ProcessMessage("area:common_laser03", "GateOpen")
  Game.ProcessMessage("area:common_laser04", "GateOpen")
  Game.ProcessMessage("area:eggman_train01", "Fast")
  Game.ProcessMessage("area:common_object_event01", "GateOpen")
  Game.ProcessMessage("area:common_object_event03", "GateClose")
  Game.ProcessMessage("area:common_object_event04", "GateClose")
  Game.ProcessMessage("area:eggman_train01", "Horn")
  Game.ProcessMessage("area:common_object_event07", "GateClose")
  Game.ProcessMessage("area:common_object_event08", "GateClose")
end
function RadicalTrain.ShadowA.train_brake01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Stop")
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowA.door_open03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Go")
  Game.ProcessMessage("area:eggman_train01", "Fast")
  Game.ProcessMessage("rct_door01", "GateOpen")
  Game.ProcessMessage("area:common_laser01", "GateOpen")
  Game.ProcessMessage("area:common_laser02", "GateOpen")
  Game.ProcessMessage("area:common_laser03", "GateClose")
  Game.ProcessMessage("area:common_laser04", "GateClose")
  Game.ProcessMessage("area:common_object_event01", "GateClose")
  Game.ProcessMessage("area:common_object_event03", "GateClose")
  Game.ProcessMessage("area:common_object_event04", "GateClose")
end
function RadicalTrain.ShadowA.train_horn01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowA.train_horn02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowA.train_camera01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Camera")
  Game.ProcessMessage("area:eggman_train01", "Fast")
  Game.ProcessMessage("area:eggman_train01", "Horn")
end
function RadicalTrain.ShadowA.train_bust01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train01", "Bomb")
end
function RadicalTrain.ShadowA.train_start02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Go")
  Game.ProcessMessage("area:common_laser07", "GateOpen")
  Game.ProcessMessage("area:common_laser08", "GateOpen")
  Game.ProcessMessage("area:common_object_event02", "GateClose")
  Game.ProcessMessage("area:common_object_event05", "GateOpen")
  Game.ProcessMessage("area:common_object_event06", "GateOpen")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowA.door_open02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:common_laser07", "GateClose")
  Game.ProcessMessage("area:common_laser08", "GateClose")
  Game.ProcessMessage("area:common_laser05", "GateOpen")
  Game.ProcessMessage("area:common_laser06", "GateOpen")
  Game.ProcessMessage("area:eggman_train02", "Fast")
  Game.ProcessMessage("area:common_object_event02", "GateOpen")
  Game.ProcessMessage("area:common_object_event05", "GateClose")
  Game.ProcessMessage("area:common_object_event06", "GateClose")
  Game.ProcessMessage("area:eggman_train02", "Horn")
  Game.ProcessMessage("area:common_object_event09", "GateClose")
  Game.ProcessMessage("area:common_object_event10", "GateClose")
end
function RadicalTrain.ShadowA.train_brake02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Stop")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowA.door_open04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Go")
  Game.ProcessMessage("area:eggman_train02", "Fast")
  Game.ProcessMessage("rct_door02", "GateOpen")
  Game.ProcessMessage("area:common_laser07", "GateOpen")
  Game.ProcessMessage("area:common_laser08", "GateOpen")
  Game.ProcessMessage("area:common_laser05", "GateClose")
  Game.ProcessMessage("area:common_laser06", "GateClose")
  Game.ProcessMessage("area:common_object_event02", "GateClose")
  Game.ProcessMessage("area:common_object_event05", "GateClose")
  Game.ProcessMessage("area:common_object_event06", "GateClose")
end
function RadicalTrain.ShadowA.train_horn03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowA.train_horn04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowA.train_camera02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Camera")
  Game.ProcessMessage("area:eggman_train02", "Fast")
  Game.ProcessMessage("area:eggman_train02", "Horn")
end
function RadicalTrain.ShadowA.train_bust02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:eggman_train02", "Bomb")
end
