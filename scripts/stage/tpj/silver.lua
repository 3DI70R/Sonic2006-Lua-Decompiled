TropicalJungle.Silver = inherits_from(ActionStage)
TropicalJungle.Silver.scripts = {
  "scripts/stage/tpj/c_silver.lua"
}
function TropicalJungle.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct TropicalJungle.Silver")
  _ARG_0_.areas = {
    ["Area C"] = TropicalJungle.SilverC
  }
  _ARG_0_.area = "Area C"
end
function TropicalJungle.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("TropicalJungle.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_tpj.plc")
  })
end
function TropicalJungle.Silver.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "TROPICAL JUNGLE"
  })
end
function TropicalJungle.Silver.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -11913,
        2983.302,
        -11168
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -11749,
      3050,
      -11094
    },
    target = {
      -11913,
      3055,
      -11168
    }
  })
  _ARG_0_:ChangeState("clear")
end
function TropicalJungle.Silver.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
