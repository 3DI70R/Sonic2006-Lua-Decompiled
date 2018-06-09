RadicalTrain.Sonic = inherits_from(ActionStage)
RadicalTrain.Sonic.scripts = {
  "scripts/stage/rct/a_sonic.lua",
  "scripts/stage/rct/b_sonic.lua"
}
function RadicalTrain.Sonic.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.Sonic")
  _ARG_0_.areas = {
    ["Area A"] = RadicalTrain.SonicA,
    ["Area B"] = RadicalTrain.SonicB
  }
  _ARG_0_.area = "Area A"
end
function RadicalTrain.Sonic.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("RadicalTrain.Sonic:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_rct.plc")
  })
end
function RadicalTrain.Sonic.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "RADICAL TRAIN"
  })
end
function RadicalTrain.Sonic.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -24262,
        3821,
        63293
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -23317,
      3821,
      62865
    },
    target = {
      -24262,
      3821,
      63293
    }
  })
  _ARG_0_:ChangeState("clear")
end
function RadicalTrain.Sonic.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
