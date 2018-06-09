DustyDesert.ShadowB = inherits_from(ActionArea)
function DustyDesert.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.ShadowB")
end
function DustyDesert.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.ShadowB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/dtd/b/"),
    Game.LoadStageSet("scripts/mission/0109/set_dtd_b_shadow.xml"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadStageSet("placement/dtd/dtd_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_b_sonic.lua"),
    Game.LoadPath("placement/dtd/dtd_shadow_b"),
    Game.LoadStageSet("placement/dtd/dset_dtd_b_sonic.XML", "pathobj"),
    Game.LoadPath("placement/dtd/d_dtd_s_b", "pathobj"),
    Game.LoadCameraSet("placement/dtd/set_dtd_b_shadow.xml"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_b")
  })
  Game.SetGenArea({
    size = {
      80 * 100,
      30 * 100,
      80 * 100
    },
    offset = {
      0,
      0,
      0
    },
    border = 5 * 100
  })
end
function DustyDesert.ShadowB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door01")
end
function DustyDesert.ShadowB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door02")
end
function DustyDesert.ShadowB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door04")
end
function DustyDesert.ShadowB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door08")
end
function DustyDesert.ShadowB.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door09")
end
function DustyDesert.ShadowB.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door10")
end
function DustyDesert.ShadowB.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar03")
  Game.Signal("dtd_pillar04")
  Game.Signal("dtd_door06")
end
function DustyDesert.ShadowB.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door05")
end
function DustyDesert.ShadowB.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door12")
end
function DustyDesert.ShadowB.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("amigo_collision01")
  Game.Signal("dtd_door03")
end
function DustyDesert.ShadowB.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
end
function DustyDesert.ShadowB.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar05")
  Game.Signal("dtd_pillar06")
  Game.Signal("dtd_pillar07")
end
function DustyDesert.ShadowB.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door14")
end
function DustyDesert.ShadowB.laser01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
end
function DustyDesert.ShadowB.laser01_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateClose")
  Game.ProcessMessage("common_laser02", "GateClose")
end
function DustyDesert.ShadowB.laser02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateOpen")
  Game.ProcessMessage("common_laser04", "GateOpen")
  Game.ProcessMessage("common_laser05", "GateOpen")
  Game.ProcessMessage("common_laser06", "GateOpen")
end
function DustyDesert.ShadowB.laser02_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateClose")
  Game.ProcessMessage("common_laser04", "GateClose")
  Game.ProcessMessage("common_laser05", "GateClose")
  Game.ProcessMessage("common_laser06", "GateClose")
end
function DustyDesert.ShadowB.laser03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
  Game.ProcessMessage("common_laser09", "GateOpen")
  Game.ProcessMessage("common_laser10", "GateOpen")
end
function DustyDesert.ShadowB.laser03_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateClose")
  Game.ProcessMessage("common_laser08", "GateClose")
  Game.ProcessMessage("common_laser09", "GateClose")
  Game.ProcessMessage("common_laser10", "GateClose")
end
function DustyDesert.ShadowB.door13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door07")
end
function DustyDesert.ShadowB.door14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door15")
end
