TropicalJungle.SilverC = inherits_from(ActionArea)
function TropicalJungle.SilverC.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.SilverC")
end
function TropicalJungle.SilverC.Setup(_ARG_0_)
  ActionArea.Setup(_ARG_0_)
  Game.Log("TropicalJungle.SilverC.Setup")
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/render_gamemode.lua"),
    Game.LoadTerrain("stage/tpj/c/"),
    Game.LoadStageSet("scripts/mission/0201/set_tpjC_silver.XML"),
    Game.LoadStageSet("placement/tpj/tpj_mapC_effects.xml", "particle"),
    Game.LoadStageSet("placement/tpj/dset_tpj_c.XML", "pathobj"),
    Game.LoadPath("placement/tpj/d_tpj_s_c", "pathobj"),
    Game.LoadSceneParams("scripts/stage/tpj/scene_tpj_c.lua"),
    Game.LoadPath("scripts/mission/0201/path_tpjC_silver"),
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
  Game.SetPlayer(-606, 51, 19493, 90, "silver.lua")
end
function TropicalJungle.SilverC.Goal_open(_ARG_0_, _ARG_1_)
  Game.Signal("common_cage01")
  Game.ProcessMessage("common_laser07", "GateOpen")
  Game.ProcessMessage("common_laser08", "GateOpen")
  Game.ProcessMessage("common_laser09", "GateOpen")
  Game.ProcessMessage("common_laser10", "GateOpen")
  Game.ProcessMessage("common_laser11", "GateOpen")
  Game.ProcessMessage("common_laser12", "GateOpen")
end
function TropicalJungle.SilverC.Oneup(_ARG_0_, _ARG_1_)
  Game.Signal("common_cage02")
end
