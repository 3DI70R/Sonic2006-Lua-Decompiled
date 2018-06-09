TropicalJungle.SonicB = inherits_from(ActionArea)
function TropicalJungle.SonicB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.SonicB")
end
function TropicalJungle.SonicB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TropicalJungle.SonicB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/tpj/b/"),
    Game.LoadSceneParams("scripts/stage/tpj/scene_tpj_b.lua"),
    Game.LoadPath("placement/tpj/path_tpjB_sonic"),
    Game.LoadPath("placement/tpj/grind_tpjB_sonic", "grind"),
    Game.LoadPath("placement/tpj/guide_tpjB_sonic", "guide"),
    Game.LoadStageSet("placement/tpj/set_tpjB_sonic.xml"),
    Game.LoadStageSet("placement/tpj/tpj_mapB_effects.xml", "particle"),
    Game.LoadStageSet("placement/tpj/set_tpjB_sonic_area.xml", "area"),
    Game.LoadStageSet("placement/tpj/dset_tpj_b.XML", "pathobj"),
    Game.LoadPath("placement/tpj/d_tpj_s_b", "pathobj"),
    Game.LoadSoundBank("sound/stage_tpj"),
    Game.LoadVoiceBank("sound/voice_tpj_e"),
    Game.PlayBGM("stg_tpj_b")
  })
  Game.SetGenArea({
    size = {
      80 * 100,
      80 * 100,
      80 * 100
    },
    offset = {
      0,
      0,
      0
    },
    border = 10 * 100
  })
  Game.SetPlayer(-1000, 4000, 23000, 180, "princess.lua")
end
function TropicalJungle.SonicB.cage01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
