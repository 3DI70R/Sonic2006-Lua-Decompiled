DustyDesert.Shadow = inherits_from(ActionStage)
DustyDesert.Shadow.scripts = {
  "scripts/stage/dtd/a_shadow.lua",
  "scripts/stage/dtd/b_shadow.lua"
}
function DustyDesert.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct DustyRuin.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = DustyDesert.ShadowA,
    ["Area B"] = DustyDesert.ShadowB
  }
  _ARG_0_.area = "Area A"
end
function DustyDesert.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("DustyDesert.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_dtd.plc")
  })
end
function DustyDesert.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -195321.906,
        5765.012,
        -875.284
      },
      r = quat.yrot(270)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -196246.125,
      5793.758,
      -911.341
    },
    target = {
      -196118.266,
      5804.208,
      -903.58
    }
  })
  _ARG_0_:ChangeState("clear")
end
function DustyDesert.Shadow.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
