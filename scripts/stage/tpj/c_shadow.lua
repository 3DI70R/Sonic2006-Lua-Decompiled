TropicalJungle.ShadowC = inherits_from(ActionArea)
function TropicalJungle.ShadowC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.ShadowC")
end
function TropicalJungle.ShadowC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TropicalJungle.ShadowC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/tpj/c/"),
    Game.LoadStageSet("scripts/mission/0103/set_tpjC_rouge.xml"),
    Game.LoadStageSet("placement/tpj/tpj_mapC_effects.xml", "particle"),
    Game.LoadStageSet("placement/tpj/dset_tpj_c.XML", "pathobj"),
    Game.LoadPath("placement/tpj/d_tpj_s_c", "pathobj"),
    Game.LoadSceneParams("scripts/stage/tpj/scene_tpj_c.lua"),
    Game.LoadPath("placement/tpj/path_tpjC_rouge"),
    Game.LoadSoundBank("sound/stage_tpj"),
    Game.LoadVoiceBank("sound/voice_tpj_e"),
    Game.PlayBGM("stg_tpj_c")
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
  Game.SetPlayer(-9115, 605, -2763, 90, "rouge.lua")
end
function TropicalJungle.ShadowC.stg_clear(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage01")
end
function TropicalJungle.ShadowC.cage_open01(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage02")
end
function TropicalJungle.ShadowC.cage_open02(_ARG_0_, _ARG_1_)
  Game.Debug()
  Game.Signal("common_cage03")
end
function TropicalJungle.ShadowC.layser_rock01(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateClose")
  Game.ProcessMessage("common_laser02", "GateClose")
  Game.ProcessMessage("common_laser03", "GateClose")
  Game.ProcessMessage("common_laser04", "GateClose")
  Game.ProcessMessage("common_laser05", "GateClose")
  Game.ProcessMessage("common_laser06", "GateClose")
end
function TropicalJungle.ShadowC.layser_off(_ARG_0_, _ARG_1_)
  Game.ProcessMessage("common_laser01", "GateOpen")
  Game.ProcessMessage("common_laser02", "GateOpen")
  Game.ProcessMessage("common_laser03", "GateOpen")
  Game.ProcessMessage("common_laser04", "GateOpen")
  Game.ProcessMessage("common_laser05", "GateOpen")
  Game.ProcessMessage("common_laser06", "GateOpen")
end
