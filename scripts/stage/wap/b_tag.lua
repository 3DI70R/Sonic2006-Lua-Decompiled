WhiteAcropolis.TagB = inherits_from(ActionArea)
function WhiteAcropolis.TagB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("WhiteAcropolis.TagB:constructor")
end
function WhiteAcropolis.TagB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode_tag.lua"),
    Game.LoadTerrain("stage/wap/b/"),
    Game.LoadPath("placement/wap/wap_s_b"),
    Game.LoadPath("placement/wap/wap_s_b_grind", "grind"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_b.lua"),
    Game.LoadStageSet("scripts/mission/3000/set_wap_b_tag.XML"),
    Game.LoadCameraSet("placement/wap/set_wap_b_sonic.XML"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_b")
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
  Game.Log("WhiteAcropolis.TagB:Setup")
end
function WhiteAcropolis.TagB.laser01(_ARG_0_, _ARG_1_)
  Game.Signal("laser01")
  Game.ProcessMessage("common_laser25", "GateOpen")
  Game.ProcessMessage("common_laser26", "GateOpen")
end
function WhiteAcropolis.TagB.enemy01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01")
  Game.StartEntityByName("GroupHelper01")
end
function WhiteAcropolis.TagB.enemy02(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper02")
  Game.ProcessMessage("common_laser32", "GateClose")
  Game.ProcessMessage("common_laser31", "GateClose")
end
function WhiteAcropolis.TagB.enemy03(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper03")
end
function WhiteAcropolis.TagB.laser03(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser33", "GateOpen")
  Game.ProcessMessage("common_laser34", "GateOpen")
end
function WhiteAcropolis.TagB.enemy04(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper08")
end
function WhiteAcropolis.TagB.laser04(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser35", "GateOpen")
  Game.ProcessMessage("common_laser36", "GateOpen")
end
function WhiteAcropolis.TagB.laser04_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser35", "GateClose")
  Game.ProcessMessage("common_laser36", "GateClose")
end
function WhiteAcropolis.TagB.enemy05(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper04")
end
function WhiteAcropolis.TagB.door01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("wap_door03", "GateOpen")
end
function WhiteAcropolis.TagB.laser05(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser33", "GateOpen")
  Game.ProcessMessage("common_laser34", "GateOpen")
end
function WhiteAcropolis.TagB.laser06(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser31", "GateOpen")
  Game.ProcessMessage("common_laser32", "GateOpen")
end
function WhiteAcropolis.TagB.laser06_close(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser31", "GateClose")
  Game.ProcessMessage("common_laser32", "GateClose")
end
function WhiteAcropolis.TagB.door02(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("wap_door06", "GateClose")
end
function WhiteAcropolis.TagB.switch01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function WhiteAcropolis.TagB.enemy10(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper14")
end
function WhiteAcropolis.TagB.enemy11(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper15")
end
function WhiteAcropolis.TagB.enemy12(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper16")
end
function WhiteAcropolis.TagB.laser07(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser59", "GateOpen")
  Game.ProcessMessage("common_laser60", "GateOpen")
end
function WhiteAcropolis.TagB.laser08(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser61", "GateOpen")
  Game.ProcessMessage("common_laser62", "GateOpen")
end
