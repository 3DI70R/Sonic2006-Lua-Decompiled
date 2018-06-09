WhiteAcropolis.SilverA = inherits_from(ActionArea)
function WhiteAcropolis.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.SilverA")
end
function WhiteAcropolis.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.SilverA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wap/a/"),
    Game.LoadStageSet("scripts/mission/0203/set_wap_a_silver.XML"),
    Game.LoadStageSet("placement/wap/wap_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_a.lua"),
    Game.LoadPath("placement/wap/wap_silver_a"),
    Game.LoadPath("placement/wap/grind_wapA_sonic", "grind"),
    Game.LoadPath("placement/wap/wap_silver_a_guide", "guide"),
    Game.LoadCameraSet("placement/wap/set_wap_a_silver.XML"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_a")
  })
  Game.SetPlayer(-1214, 30334, 934, 0, "blaze.lua")
end
function WhiteAcropolis.SilverA.yuki(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("wap_pathsnowball01", "Shoot", {target = _ARG_1_})
end
function WhiteAcropolis.SilverA.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function WhiteAcropolis.SilverA.door01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_door03")
end
function WhiteAcropolis.SilverA.laser01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("common_laser21", "GateOpen")
  Game.ProcessMessage("common_laser22", "GateOpen")
end
function WhiteAcropolis.SilverA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_door04")
end
