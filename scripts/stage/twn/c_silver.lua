Town.SilverC = inherits_from(ActionArea)
function Town.SilverC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct Town.SilverC")
end
function Town.SilverC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("Town.SilverC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_twn_c.lua"),
    Game.LoadTerrain("stage/twn/c/"),
    Game.LoadStageSet("placement/twn/c/set_twn_c.xml"),
    Game.LoadStageSet("placement/twn/c/twn_mapC_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/twn/scene_twn_c.lua"),
    Game.LoadPath("placement/twn/c/path_twnC_silver"),
    Game.LoadKynapse("kynapse/town_c.kbf"),
    Game.LoadTownsmanInfo("kynapse/town_man_info_c.lua"),
    Game.SetAreaName("town_c"),
    Game.PlayBGM("stg_twn_c"),
    Game.LoadVoiceBank("sound/voice_twn_e"),
    Game.LoadRaderMap("twn/twn_radermap_c")
  })
  Game.SetPlayer(40610, 4392, -59848, -120, "silver.lua")
end
function Town.SilverC.esp01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("physicspath01")
  Game.ProcessMessage("physicspath01", "PsiEffect", {effect = true})
  Game.Signal("physicspath02")
  Game.ProcessMessage("physicspath02", "PsiEffect", {effect = true})
  Game.Signal("physicspath03")
  Game.ProcessMessage("physicspath03", "PsiEffect", {effect = true})
end
