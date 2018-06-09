KingdomValley.ShadowD = inherits_from(ActionArea)
function KingdomValley.ShadowD.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.ShadowD")
end
function KingdomValley.ShadowD.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/kdv/d/"),
    Game.LoadStageSet("scripts/mission/0101/set_kdv_d_shadow.XML"),
    Game.LoadStageSet("placement/kdv/kdv_mapD_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_d.lua"),
    Game.LoadPath("placement/kdv/kdv_shadow_d"),
    Game.LoadStageSet("placement/kdv/dset_kdv_d_sonic.XML", "pathobj"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_a")
  })
  Game.SetPlayer(-5912, 501, 18453, 160, "rouge.lua")
  Game.SetPlayer(-5912, 501, 18453, 160, "shadow.lua", 1, true)
end
function KingdomValley.ShadowD.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function KingdomValley.ShadowD.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
  Game.Signal("kdv_door05")
end
function KingdomValley.ShadowD.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door01")
  Game.StartEntityByName("amigo_collision01")
  Game.StartEntityByName("amigo_collision03")
  Game.StartEntityByName("amigo_collision04")
end
function KingdomValley.ShadowD.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door02")
end
function KingdomValley.ShadowD.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("kdv_door03")
  Game.Signal("kdv_door04")
end
function KingdomValley.ShadowD.tower01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics128")
end
function KingdomValley.ShadowD.tower02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics127")
end
function KingdomValley.ShadowD.tower03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics321")
end
function KingdomValley.ShadowD.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function KingdomValley.ShadowD.laser01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser02", "GateOpen")
  Game.ProcessMessage("common_laser01", "GateOpen")
end
function KingdomValley.ShadowD.b01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("objectphysics112")
end
function KingdomValley.ShadowD.cage02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function KingdomValley.ShadowD.close01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("kdv_door01", "GateClose")
end
