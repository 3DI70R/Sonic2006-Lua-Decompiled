AquaticBase.TagA = inherits_from(ActionArea)
function AquaticBase.TagA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("AquaticBase.TagA:constructor")
end
function AquaticBase.TagA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/aqa/a/"),
    Game.LoadPath("placement/aqa/d_aqa_s_a", "pathobj"),
    Game.LoadParticle("particle/map_aqa.plc"),
    Game.LoadSceneParams("scripts/stage/aqa/scene_aqa_a.lua"),
    Game.LoadStageSet("placement/aqa/d_set_aqaA_sonic.XML", "pathobj"),
    Game.LoadStageSet("placement/aqa/aqa_mapA_effects.xml", "particle"),
    Game.LoadStageSet("scripts/mission/3000/set_aqa_a_tag.XML"),
    Game.LoadCameraSet("placement/aqa/set_aqaA_sonic.XML"),
    Game.LoadSoundBank("sound/stage_aqa"),
    Game.LoadVoiceBank("sound/voice_aqa_e"),
    Game.PlayBGM("stg_aqa_a")
  })
  Game.SetGenArea({
    size = {
      60 * 100,
      60 * 100,
      60 * 100
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
  Game.Log("AquaticBase.TagA:Setup")
end
function AquaticBase.TagA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door01")
end
function AquaticBase.TagA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door02")
end
function AquaticBase.TagA.door03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door03")
end
function AquaticBase.TagA.door04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door04")
end
function AquaticBase.TagA.door05(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door05")
end
function AquaticBase.TagA.laser01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser60", "GateClose")
  Game.ProcessMessage("common_laser61", "GateClose")
end
function AquaticBase.TagA.door06(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door06")
end
function AquaticBase.TagA.door07(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door08")
end
function AquaticBase.TagA.door08(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door11")
  Game.ProcessMessage("common_laser68", "GateOpen")
  Game.ProcessMessage("common_laser69", "GateOpen")
end
function AquaticBase.TagA.door09(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door13")
end
function AquaticBase.TagA.door20(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door12")
end
function AquaticBase.TagA.enemy01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.StartEntityByName("GroupHelper11")
  Game.Signal("aqa_door14")
end
function AquaticBase.TagA.door10(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door15")
end
function AquaticBase.TagA.door11(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door10")
end
function AquaticBase.TagA.door12(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser61", "GateOpen")
  Game.ProcessMessage("common_laser60", "GateOpen")
end
function AquaticBase.TagA.door13(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door16")
end
function AquaticBase.TagA.door14(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door17")
end
function AquaticBase.TagA.door15(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("aqa_door19")
end
function AquaticBase.TagA.door16(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("aqa_door08", "GateClose")
end
function AquaticBase.TagA.laser02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser92", "GateOpen")
  Game.ProcessMessage("common_laser91", "GateOpen")
end
function AquaticBase.TagA.laser02_close(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser92", "GateClose")
  Game.ProcessMessage("common_laser91", "GateClose")
end
function AquaticBase.TagA.laser03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser04", "GateOpen")
  Game.ProcessMessage("common_laser05", "GateOpen")
end
function AquaticBase.TagA.laser03_close(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser04", "GateClose")
  Game.ProcessMessage("common_laser05", "GateClose")
end
function AquaticBase.TagA.laser04_close(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser93", "GateClose")
  Game.ProcessMessage("common_laser94", "GateClose")
end
function AquaticBase.TagA.laser04(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser93", "GateOpen")
  Game.ProcessMessage("common_laser94", "GateOpen")
end
