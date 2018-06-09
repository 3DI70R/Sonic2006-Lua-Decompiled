TropicalJungle.SonicA = inherits_from(ActionArea)
function TropicalJungle.SonicA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.SonicA")
end
function TropicalJungle.SonicA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TropicalJungle.SonicA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/tpj/a/"),
    Game.LoadStageSet("placement/tpj/set_tpjA_sonic.xml"),
    Game.LoadStageSet("placement/tpj/tpj_mapA_effects.xml", "particle"),
    Game.LoadStageSet("placement/tpj/dset_tpj_a.XML", "pathobj"),
    Game.LoadPath("placement/tpj/d_tpj_s_a", "pathobj"),
    Game.LoadSceneParams("scripts/stage/tpj/scene_tpj_a.lua"),
    Game.LoadPath("placement/tpj/path_tpjA_sonic"),
    Game.LoadPath("placement/tpj/grind_tpjA_sonic", "grind"),
    Game.LoadPath("placement/tpj/guide_tpjA_sonic", "guide"),
    Game.LoadStageSet("placement/tpj/set_tpjA_sonic_area.xml", "area"),
    Game.LoadSoundBank("sound/stage_tpj"),
    Game.LoadVoiceBank("sound/voice_tpj_e"),
    Game.PlayBGM("stg_tpj_a")
  })
  Game.SetPlayer(-12320, 13440, 65847, -180, "princess.lua")
end
function TropicalJungle.SonicA.AtoB(_ARG_0_)
  _ARG_0_:ChangeArea("Area B")
end
