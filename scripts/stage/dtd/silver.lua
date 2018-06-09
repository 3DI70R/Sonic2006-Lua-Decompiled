DustyDesert.Silver = inherits_from(ActionStage)
DustyDesert.Silver.scripts = {
  "scripts/stage/dtd/a_silver.lua",
  "scripts/stage/dtd/b_silver.lua"
}
function DustyDesert.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct DustyDesert.Silver")
  _ARG_0_.areas = {
    ["Area A"] = DustyDesert.SilverA,
    ["Area B"] = DustyDesert.SilverB
  }
  _ARG_0_.area = "Area A"
end
function DustyDesert.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("DustyDesert.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_dtd.plc")
  })
end
function DustyDesert.Silver.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
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
function DustyDesert.Silver.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
