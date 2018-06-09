DustyDesert.TagB = inherits_from(ActionArea)
function DustyDesert.TagB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.TagB")
end
function DustyDesert.TagB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/dtd/b/"),
    Game.LoadPath("placement/dtd/dtd_s_b"),
    Game.LoadPath("placement/dtd/d_dtd_s_b", "pathobj"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_b_sonic.lua"),
    Game.LoadStageSet("placement/dtd/dset_dtd_b_sonic.XML", "pathobj"),
    Game.LoadStageSet("placement/dtd/dtd_mapB_effects.xml", "particle"),
    Game.LoadStageSet("scripts/mission/3000/set_dtd_b_tag.XML"),
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
    border = 20 * 100
  })
  Game.SetPlayer(0, 0, 0, 0, "sonic_new.lua", 0)
  Game.SetPlayer(0, 0, 0, 0, "shadow.lua", 1)
  Game.Log("DustyDesert.TagB:Setup")
end
function DustyDesert.TagB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door01")
end
function DustyDesert.TagB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door02")
end
function DustyDesert.TagB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door04")
end
function DustyDesert.TagB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door08")
end
function DustyDesert.TagB.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door09")
end
function DustyDesert.TagB.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door10")
end
function DustyDesert.TagB.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar03")
  Game.Signal("dtd_pillar04")
  Game.Signal("dtd_door06")
end
function DustyDesert.TagB.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door05")
end
function DustyDesert.TagB.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door12")
end
function DustyDesert.TagB.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("amigo_collision01")
  Game.Signal("dtd_door03")
end
function DustyDesert.TagB.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
end
function DustyDesert.TagB.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar05")
  Game.Signal("dtd_pillar06")
  Game.Signal("dtd_pillar07")
end
function DustyDesert.TagB.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door14")
end
function DustyDesert.TagB.laser01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function DustyDesert.TagB.laser01_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateClose")
  Game.ProcessMessage("common_laser02", "GateClose")
  Game.ProcessMessage("common_laser11", "GateClose")
  Game.ProcessMessage("common_laser12", "GateClose")
end
function DustyDesert.TagB.laser02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateOpen")
  Game.ProcessMessage("common_laser04", "GateOpen")
  Game.ProcessMessage("common_laser05", "GateOpen")
  Game.ProcessMessage("common_laser06", "GateOpen")
end
function DustyDesert.TagB.laser02_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser03", "GateClose")
  Game.ProcessMessage("common_laser04", "GateClose")
  Game.ProcessMessage("common_laser05", "GateClose")
  Game.ProcessMessage("common_laser06", "GateClose")
end
function DustyDesert.TagB.laser03(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
  Game.ProcessMessage("common_laser09", "GateOpen")
  Game.ProcessMessage("common_laser10", "GateOpen")
end
function DustyDesert.TagB.laser03_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser07", "GateClose")
  Game.ProcessMessage("common_laser08", "GateClose")
  Game.ProcessMessage("common_laser09", "GateClose")
  Game.ProcessMessage("common_laser10", "GateClose")
end
function DustyDesert.TagB.door13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door07")
end
function DustyDesert.TagB.door14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door15")
end
