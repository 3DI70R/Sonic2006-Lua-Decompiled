Boss.SecondMefiressArea = inherits_from(ActionArea)
function Boss.SecondMefiressArea.constructor(_ARG_0_)
  ActionArea.constructor(_ARG_0_)
  Game.Log("Boss.SecondMefiressArea:constructor")
end
function Boss.SecondMefiressArea.Setup(_ARG_0_)
  Game.Log("Area setup")
  ActionArea.Setup(_ARG_0_)
  _ARG_0_:AddComponent({
    Game.LoadRenderScript("scripts/render/stage/render_secondmefiress.lua"),
    Game.LoadTerrain("stage/boss/secondmefiress_dtd/"),
    Game.LoadStageSet("scripts/mission/0109/set_secondmefiress_shadow.xml"),
    Game.LoadParticle("particle/map_dtd.plc"),
    Game.LoadStageSet("placement/boss/secondmefiress/sendmefi_effects.xml", "particle"),
    Game.LoadSceneParams("scripts/stage/boss/scene_secondmefiress.lua"),
    Game.LoadVoiceBank("sound/voice_all"),
    Game.LoadVoiceBank("sound/voice_mefiress2_e"),
    Game.PlayBGM("boss_mefiless02")
  })
  Game.SetGenArea({
    size = {
      500 * 100,
      100 * 100,
      500 * 100
    }
  })
end
function Boss.SecondMefiressArea.boss_is_dead(_ARG_0_, _ARG_1_)
  Game.Log("called boss_is_dead")
  _ARG_0_._stage:ChangeState("clear")
end
Boss.SecondMefiress = inherits_from(ActionStage)
function Boss.SecondMefiress.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  _ARG_0_.areas = {
    ["Area A"] = Boss.SecondMefiressArea
  }
  _ARG_0_.area = "Area A"
  Game.Log("construct Boss.SecondMefiress")
end
function Boss.SecondMefiress.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("Boss.SecondMefiress setup")
end
