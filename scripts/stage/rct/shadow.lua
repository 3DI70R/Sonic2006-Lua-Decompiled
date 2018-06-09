RadicalTrain.Shadow = inherits_from(ActionStage)
RadicalTrain.Shadow.scripts = {
  "scripts/stage/rct/a_shadow.lua",
  "scripts/stage/rct/b_shadow.lua"
}
function RadicalTrain.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct RadicalTrain.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = RadicalTrain.ShadowA,
    ["Area B"] = RadicalTrain.ShadowB
  }
  _ARG_0_.area = "Area A"
end
function RadicalTrain.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("RadicalTrain.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_rct.plc")
  })
end
function RadicalTrain.Shadow.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "RADICAL TRAIN"
  })
end
function RadicalTrain.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -27774,
        2980.179,
        55329
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -27274,
      2980.179,
      55329
    },
    target = {
      -27774,
      2980.179,
      55329
    }
  })
  _ARG_0_:ChangeState("clear")
end
function RadicalTrain.Shadow.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
