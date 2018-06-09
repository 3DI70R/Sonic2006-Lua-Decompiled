Boss.FirstMefiressArea = inherits_from(ActionArea)
function Boss.FirstMefiressArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("Boss.FirstMefiressArea:constructor")
end
function Boss.FirstMefiressArea.Setup(_ARG_0_)
  Game.Log("Boss.FirstMefiressArea:Setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_firstmefiress.lua"),
    Game.LoadTerrain("stage/boss/firstmefiress_flc/"),
    Game.LoadStageSet("scripts/mission/0103/set_firstmefiress_shadow.xml"),
    Game.LoadSceneParams("scripts/stage/boss/scene_firstmefiress.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_mefiress_e"),
    Game.PlayBGM("boss_mefiless01")
  })
  Game.SetGenArea({
    size = {
      500 * 100,
      100 * 100,
      500 * 100
    }
  })
end
function Boss.FirstMefiressArea.boss_is_dead(_ARG_0_)
  Game.Log("Boss.FirstMefiressArea:boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.FirstMefiress = inherits_from(ActionStage)
function Boss.FirstMefiress.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.FirstMefiressArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("Boss.FirstMefiress:constructor")
end
function Boss.FirstMefiress.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.FirstMefiress:Setup")
end
