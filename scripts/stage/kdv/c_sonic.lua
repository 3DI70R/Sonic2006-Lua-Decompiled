KingdomValley.SonicC = inherits_from(ActionArea)
function KingdomValley.SonicC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct KingdomValley.SonicC")
end
function KingdomValley.SonicC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_kdv.plc"),
    Game.LoadRenderScript("scripts/render/stage/render_kdv_c.lua"),
    Game.LoadTerrain("stage/kdv/c/", false),
    Game.LoadStageSet("placement/kdv/set_kdv_c_sonic.XML"),
    Game.LoadStageSet("placement/kdv/set_kdv_c_sonic_area.xml", "area"),
    Game.LoadStageSet("placement/kdv/kdv_mapC_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/kdv/scene_kdv_c.lua"),
    Game.LoadPath("placement/kdv/kdv_s_c"),
    Game.LoadCameraSet("placement/kdv/set_kdv_c_sonic.XML"),
    Game.LoadCameraParam("placement/kdv/cameraparam_sonic_c.lua"),
    Game.LoadSoundBank("sound/stage_kdv"),
    Game.LoadVoiceBank("sound/voice_kdv_e"),
    Game.PlayBGM("stg_kdv_c")
  })
  Game.SetPlayer(193790, 5790, -872, 270, "sonic_fast.lua")
  Game.SetGenArea({
    size = {
      100 * 100,
      120 * 100,
      120 * 100
    },
    offset = {
      -40 * 100,
      0,
      0
    }
  })
end
function KingdomValley.SonicC.StartPlaying(_ARG_0_)
end
function KingdomValley.SonicC.hint01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.ProcessMessage("LEVEL", "HintMessage", {id = "hint_11"})
end
