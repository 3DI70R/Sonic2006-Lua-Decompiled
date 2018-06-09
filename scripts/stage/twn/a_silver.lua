Town.SilverA = inherits_from(ActionArea)
function Town.SilverA.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.SilverA")
end
function Town.SilverA.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.SilverA.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_a.lua"),
    Game.LoadTerrain("stage/twn/a/"),
    Game.LoadStageSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadStageSet("placement/twn/a/dset_twn_a_sonic", "design"),
    Game.LoadStageSet("placement/twn/a/twn_mapA_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_a.lua"),
    Game.LoadCameraSet("placement/twn/a/set_twn_a_060228.xml"),
    Game.LoadKynapse("kynapse/town_a.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_a.lua"),
    Game.SetAreaName("town_a"),
    Game.PlayBGM("stg_twn_a"),
    Game.LoadVoiceBank("sound/voice_twn_e"),
    Game.LoadRaderMap("twn/twn_radermap_a")
  })
  Game.SetGenArea({
    size = {
      100 * 100,
      100 * 100,
      100 * 100
    },
    offset = {
      0,
      0,
      0
    },
    border = {
      20 * 100
    }
  })
  Game.SetPlayer(21711, 210, 1317, 0, "silver.lua")
end
