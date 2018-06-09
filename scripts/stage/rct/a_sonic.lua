RadicalTrain.SonicA = inherits_from(ActionArea)
function RadicalTrain.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.SonicA")
end
function RadicalTrain.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("RadicalTrain.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_rct_a.lua"),
    Game.LoadTerrain("stage/rct/a/"),
    Game.LoadStageSet("placement/rct/set_rctA_sonic.xml"),
    Game.LoadStageSet("placement/rct/set_rctA_sonic_area.XML", "area"),
    Game.LoadSceneParams("scripts/stage/rct/scene_rct_a.lua"),
    Game.LoadPath("placement/rct/path_rctA_sonic"),
    Game.LoadPath("placement/rct/grind_rctA_sonic", "grind"),
    Game.LoadPath("placement/rct/guide_rctA_sonic", "guide"),
    Game.LoadCameraSet("placement/rct/set_rctA_sonic.xml"),
    Game.LoadSoundBank("sound/stage_rct"),
    Game.LoadVoiceBank("sound/voice_rct_e"),
    Game.PlayBGM("stg_rct_a")
  })
end
function RadicalTrain.SonicA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
function RadicalTrain.SonicA.train_start01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train02", "Go")
  Game.ProcessMessage("area:normal_train02", "Horn")
end
function RadicalTrain.SonicA.train_horn01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train02", "Horn")
end
function RadicalTrain.SonicA.train_horn02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train02", "Horn")
end
function RadicalTrain.SonicA.train_camera01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train02", "Camera")
  Game.ProcessMessage("area:normal_train02", "Horn")
end
function RadicalTrain.SonicA.train_brake01(_ARG_0_, _ARG_1_)
  Game.Signal("objectphysics80")
  Game.ProcessMessage("area:normal_train02", "Bomb")
  Game.ProcessMessage("area:normal_train02", "Stop")
end
function RadicalTrain.SonicA.door_open01(_ARG_0_, _ARG_1_)
  Game.Signal("rct_door01")
  Game.Signal("objectphysics80")
  Game.ProcessMessage("area:common_object_event01", "GateClose")
  Game.ProcessMessage("area:common_object_event04", "GateClose")
  Game.ProcessMessage("area:common_object_event07", "GateClose")
  Game.ProcessMessage("area:common_object_event08", "GateClose")
end
function RadicalTrain.SonicA.train_start02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train01", "Go")
  Game.ProcessMessage("area:normal_train01", "Horn")
end
function RadicalTrain.SonicA.train_horn03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train01", "Horn")
end
function RadicalTrain.SonicA.train_horn04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train01", "Horn")
end
function RadicalTrain.SonicA.train_camera02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train01", "Camera")
  Game.ProcessMessage("area:normal_train01", "Horn")
end
function RadicalTrain.SonicA.train_brake02(_ARG_0_, _ARG_1_)
  Game.Signal("objectphysics316")
  Game.ProcessMessage("area:normal_train01", "Bomb")
  Game.ProcessMessage("area:normal_train01", "Stop")
end
function RadicalTrain.SonicA.door_open02(_ARG_0_, _ARG_1_)
  Game.Signal("rct_door02")
  Game.Signal("objectphysics316")
  Game.ProcessMessage("area:common_object_event02", "GateClose")
  Game.ProcessMessage("area:common_object_event05", "GateClose")
  Game.ProcessMessage("area:common_object_event09", "GateClose")
  Game.ProcessMessage("area:common_object_event10", "GateClose")
end
function RadicalTrain.SonicA.train_start03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train03", "Go")
  Game.ProcessMessage("area:normal_train03", "Horn")
end
function RadicalTrain.SonicA.train_horn05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train03", "Horn")
end
function RadicalTrain.SonicA.train_horn06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train03", "Horn")
end
function RadicalTrain.SonicA.train_camera03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:normal_train03", "Camera")
  Game.ProcessMessage("area:normal_train03", "Horn")
end
function RadicalTrain.SonicA.train_brake03(_ARG_0_, _ARG_1_)
  Game.Signal("objectphysics338")
  Game.ProcessMessage("area:normal_train03", "Bomb")
  Game.ProcessMessage("area:normal_train03", "Stop")
end
function RadicalTrain.SonicA.door_open03(_ARG_0_, _ARG_1_)
  Game.Signal("rct_door03")
  Game.Signal("objectphysics338")
  Game.ProcessMessage("area:common_object_event03", "GateClose")
  Game.ProcessMessage("area:common_object_event06", "GateClose")
  Game.ProcessMessage("area:common_object_event11", "GateClose")
  Game.ProcessMessage("area:common_object_event12", "GateClose")
end
function RadicalTrain.SonicA.train_start04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train03", "Go")
  Game.ProcessMessage("area:freight_train03", "Horn")
end
function RadicalTrain.SonicA.train_start05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train04", "Go")
  Game.ProcessMessage("area:freight_train05", "Go")
  Game.ProcessMessage("area:freight_train04", "Horn")
  Game.ProcessMessage("area:freight_train05", "Horn")
end
function RadicalTrain.SonicA.train_start06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Go")
  Game.ProcessMessage("area:freight_train02", "Go")
  Game.ProcessMessage("area:freight_train01", "Horn")
  Game.ProcessMessage("area:freight_train02", "Horn")
end
function RadicalTrain.SonicA.StartPlaying(_ARG_0_)
  _ARG_0_.train = Game.NewActor("rct_train", {
    path = "line_guid02"
  })
  Game.Log("Create Train")
end
function RadicalTrain.SonicA.train_stop(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("area:freight_train01", "Stop")
  Game.ProcessMessage("area:freight_train02", "Stop")
  Game.ProcessMessage("area:freight_train03", "Stop")
  Game.ProcessMessage("area:freight_train04", "Stop")
  Game.ProcessMessage("area:freight_train05", "Stop")
  Game.ProcessMessage("area:freight_train06", "Stop")
end
function RadicalTrain.SonicA.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function RadicalTrain.SonicA.enemy_set01(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper24")
end
function RadicalTrain.SonicA.enemy_set02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper25")
end
function RadicalTrain.SonicA.enemy_set03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper26")
end
function RadicalTrain.SonicA.enemy_set04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper27")
end
function RadicalTrain.SonicA.enemy_set05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper28")
end
function RadicalTrain.SonicA.enemy_set06(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper29")
end
function RadicalTrain.SonicA.enemy_set07(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper30")
end
function RadicalTrain.SonicA.enemy_set08(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper31")
end
function RadicalTrain.SonicA.enemy_set09(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper32")
end
function RadicalTrain.SonicA.enemy_set10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper33")
end
function RadicalTrain.SonicA.enemy_set11(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper34")
end
