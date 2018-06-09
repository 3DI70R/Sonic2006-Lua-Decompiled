FlameCore.Silver = inherits_from(ActionStage)
FlameCore.Silver.scripts = {
  "scripts/stage/flc/a_silver.lua",
  "scripts/stage/flc/b_silver.lua"
}
function FlameCore.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct FlameCore.Silver")
  _ARG_0_.areas = {
    ["Area A"] = FlameCore.SilverA,
    ["Area B"] = FlameCore.SilverB
  }
  _ARG_0_.area = "Area A"
end
function FlameCore.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("FlameCore.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_flc.plc")
  })
end
function FlameCore.Silver.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {stagename = "FRAME CORE"})
end
function FlameCore.Silver.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.Log((Game.PlayerIndexToActorID(_ARG_1_.player_no)))
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        -9035,
        968,
        -26112
      },
      r = quat.yrot(150)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      -8535,
      968,
      -26112
    },
    target = {
      -9035,
      968,
      -26112
    }
  })
  _ARG_0_:ChangeState("clear")
end
function FlameCore.Silver.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
