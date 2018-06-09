WhiteAcropolis.SilverB = inherits_from(ActionArea)
function WhiteAcropolis.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.SilverB")
end
function WhiteAcropolis.SilverB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.SilverB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_wap_b.lua"),
    Game.LoadTerrain("stage/wap/b/"),
    Game.LoadStageSet("scripts/mission/0203/set_wap_b_silver.XML"),
    Game.LoadStageSet("placement/wap/wap_mapB_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_b.lua"),
    Game.LoadPath("placement/wap/wap_silver_b"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_b")
  })
  Game.SetGenArea({
    size = {
      80 * 100,
      40 * 100,
      80 * 100
    },
    border = 10 * 100
  })
  Game.SetPlayer(-4725.669, 0, 18379.227, 0, "silver.lua")
end
function WhiteAcropolis.SilverB.StartPlaying(_ARG_0_)
end
function WhiteAcropolis.SilverB.enemy01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01")
  Game.StartEntityByName("GroupHelper01")
end
function WhiteAcropolis.SilverB.laser01(_ARG_0_, _ARG_1_)
  Game.Signal("laser01")
  Game.ProcessMessage("common_laser19", "GateOpen")
  Game.ProcessMessage("common_laser22", "GateOpen")
end
function WhiteAcropolis.SilverB.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("wap_door03", "GateOpen")
end
function WhiteAcropolis.SilverB.enemy02(_ARG_0_, _ARG_1_)
  Game.Signal("enemy02")
  Game.StartEntityByName("GroupHelper03")
end
function WhiteAcropolis.SilverB.enemy03(_ARG_0_, _ARG_1_)
  Game.Signal("enemy03")
  Game.StartEntityByName("GroupHelper04")
end
function WhiteAcropolis.SilverB.enemy04(_ARG_0_, _ARG_1_)
  Game.Signal("enemy03")
  Game.StartEntityByName("GroupHelper05")
end
function WhiteAcropolis.SilverB.esp01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath01")
  Game.ProcessMessage("physicspath01", "PsiEffect", {effect = true})
  Game.Signal("physicspath02")
  Game.ProcessMessage("physicspath02", "PsiEffect", {effect = true})
end
function WhiteAcropolis.SilverB.cage01(_ARG_0_, _ARG_1_)
  Game.Signal("common_cage01")
end
function WhiteAcropolis.SilverB.hakai01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser52", "GateOpen")
  Game.ProcessMessage("common_laser53", "GateOpen")
end
function WhiteAcropolis.SilverB.enemy100(_ARG_0_, _ARG_1_)
  Game.StartEntityByName("GroupHelper26")
end
