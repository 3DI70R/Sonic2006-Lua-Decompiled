WhiteAcropolis.ShadowA = inherits_from(ActionArea)
function WhiteAcropolis.ShadowA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.ShadowA")
end
function WhiteAcropolis.ShadowA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.ShadowA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wap/a/"),
    Game.LoadStageSet("scripts/mission/0101/set_wap_a_shadow.XML"),
    Game.LoadStageSet("placement/wap/wap_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_a.lua"),
    Game.LoadPath("placement/wap/wap_shadow_a"),
    Game.LoadPath("placement/wap/grind_wapA_shadow", "grind"),
    Game.LoadCameraSet("placement/wap/set_wap_a_shadow.XML"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_a")
  })
  Game.SetPlayer(-1214, 30334, 934, 0, "shadow.lua")
end
function WhiteAcropolis.ShadowA.yuki(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_pathsnowball01")
end
function WhiteAcropolis.ShadowA.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function WhiteAcropolis.ShadowA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_door01")
end
function WhiteAcropolis.ShadowA.laser01(_ARG_0_, _ARG_1_)
  Game.Signal("laser01")
  Game.ProcessMessage("common_laser21", "GateOpen")
  Game.ProcessMessage("common_laser22", "GateOpen")
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
end
function WhiteAcropolis.ShadowA.enemy01(_ARG_0_, _ARG_1_)
  Game.Signal("enemy01")
  Game.StartEntityByName("GroupHelper10")
end
