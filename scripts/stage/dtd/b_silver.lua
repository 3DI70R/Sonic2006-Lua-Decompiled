DustyDesert.SilverB = inherits_from(ActionArea)
function DustyDesert.SilverB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.SilverB")
end
function DustyDesert.SilverB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("DustyDesert.SilverB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_test002.lua"),
    Game.LoadTerrain("stage/dtd/b/"),
    Game.LoadStageSet("scripts/mission/0202/set_dtd_b_silver.XML"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadStageSet("placement/dtd/dtd_mapB_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/dtd/scene_dtd_b_sonic.lua"),
    Game.LoadPath("scripts/mission/0202/dtd_s_b"),
    Game.LoadSoundBank("sound/stage_dtd"),
    Game.LoadVoiceBank("sound/voice_dtd_e"),
    Game.PlayBGM("stg_dtd_b")
  })
  Game.SetPlayer(23159, -600, -21909, -90, "silver.lua")
end
function DustyDesert.SilverB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door01")
end
function DustyDesert.SilverB.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door06")
end
function DustyDesert.SilverB.pillar01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar01")
  Game.Signal("dtd_pillar02")
  Game.Signal("dtd_pillar03")
end
function DustyDesert.SilverB.pillar02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_pillar04")
  Game.Signal("dtd_pillar05")
  Game.Signal("dtd_pillar06")
  Game.StartEntityByName("amigo_collision01")
  Game.StartEntityByName("common_hint_collision04")
  Game.ProcessMessage("dtd_door12", "GateClose")
end
function DustyDesert.SilverB.door17(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door10")
end
function DustyDesert.SilverB.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door11")
end
function DustyDesert.SilverB.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door12")
end
function DustyDesert.SilverB.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door13")
end
function DustyDesert.SilverB.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door14")
end
function DustyDesert.SilverB.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door15")
end
function DustyDesert.SilverB.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door16")
end
function DustyDesert.SilverB.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door17")
end
function DustyDesert.SilverB.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door18")
end
function DustyDesert.SilverB.door11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door08")
end
function DustyDesert.SilverB.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door03")
end
function DustyDesert.SilverB.door13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door05")
end
function DustyDesert.SilverB.door14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door19")
end
function DustyDesert.SilverB.door15(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door20")
end
function DustyDesert.SilverB.door16(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door04")
end
function DustyDesert.SilverB.door17(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door10")
end
function DustyDesert.SilverB.door18(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("dtd_door09")
end
