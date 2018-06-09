WhiteAcropolis.SonicA = inherits_from(ActionArea)
function WhiteAcropolis.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct WhiteAcropolis.SonicA")
end
function WhiteAcropolis.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("WhiteAcropolis.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/wap/a/"),
    Game.LoadStageSet("placement/wap/set_wap_a_sonic.XML"),
    Game.LoadStageSet("placement/wap/wap_mapA_effects.xml", "particle"),
    Game.LoadParticle("particle/map_wap.plc"),
    Game.LoadSceneParams("scripts/stage/wap/scene_wap_a.lua"),
    Game.LoadPath("placement/wap/wap_s_a"),
    Game.LoadPath("placement/wap/grind_wapA_sonic", "grind"),
    Game.LoadPath("placement/wap/wap_s_a_guide", "guide"),
    Game.LoadCameraSet("placement/wap/set_wap_a_sonic.XML"),
    Game.LoadSoundBank("sound/stage_wap"),
    Game.LoadVoiceBank("sound/voice_wap_e"),
    Game.PlayBGM("stg_wap_a")
  })
  Game.SetPlayer(-1214, 30334, 934, 0, "snow_board.lua")
end
function WhiteAcropolis.SonicA.yuki(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("wap_pathsnowball01", "Shoot", {target = _ARG_1_})
end
function WhiteAcropolis.SonicA.goto_b(_ARG_0_, _ARG_1_)
  _ARG_0_:ChangeArea("Area B")
end
function WhiteAcropolis.SonicA.door02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("wap_door01")
end
