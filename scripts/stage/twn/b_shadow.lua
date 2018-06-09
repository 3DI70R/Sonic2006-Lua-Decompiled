Town.ShadowB = inherits_from(ActionArea)
function Town.ShadowB.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.ShadowB")
end
function Town.ShadowB.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.ShadowB.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_b.lua"),
    Game.LoadTerrain("stage/twn/b/"),
    Game.LoadStageSet("placement/twn/b/twn_mapB_effects.xml", "particle"),
    Game.LoadStageSet("placement/twn/b/set_twn_b_060228.xml"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_b.lua"),
    Game.LoadKynapse("kynapse/town_b.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_b.lua"),
    Game.SetAreaName("town_b"),
    Game.PlayBGM("stg_twn_b"),
    Game.LoadVoiceBank("sound/voice_twn_e"),
    Game.LoadRaderMap("twn/twn_radermap_b")
  })
  Game.SetPlayer(16939, 1102, 21245, 0, "shadow.lua")
end
