RadicalTrain.Silver = inherits_from(ActionStage)
RadicalTrain.Silver.scripts = {
  "scripts/stage/rct/a_silver.lua"
}
function RadicalTrain.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.Silver")
  _ARG_0_.areas = {
    ["Area A"] = RadicalTrain.SilverA
  }
  _ARG_0_.area = "Area A"
end
function RadicalTrain.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("RadicalTrain.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_rct.plc")
  })
end
function RadicalTrain.Silver.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "RADICAL TRAIN"
  })
end
function RadicalTrain.Silver.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -39107.387,
        -4038.358,
        22392.119
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -38506.484,
      -4038.358,
      22395.357
    },
    target = {
      -39107.387,
      -4038.358,
      22392.119
    }
  })
  _ARG_0_:ChangeState("clear")
end
function RadicalTrain.Silver.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
