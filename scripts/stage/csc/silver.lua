CrisisCity.Silver = inherits_from(ActionStage)
CrisisCity.Silver.scripts = {
  "scripts/stage/csc/b_silver.lua",
  "scripts/stage/csc/f1_silver.lua",
  "scripts/stage/csc/f2_silver.lua"
}
function CrisisCity.Silver.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.Silver")
  _ARG_0_.areas = {
    ["Area B"] = CrisisCity.SilverB,
    ["Area F1"] = CrisisCity.SilverF1,
    ["Area F2"] = CrisisCity.SilverF2
  }
  _ARG_0_.area = "Area A"
  _ARG_0_.result_name = 1
end
function CrisisCity.Silver.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("CrisisCity.Silver:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_csc.plc")
  })
end
function CrisisCity.Silver.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "CRISIS CITY"
  })
end
function CrisisCity.Silver.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
  Game.Log("Reaches The Goal!")
  _ARG_0_:MissionComplete()
  Game.ProcessMessage("PLAYER", "PlayerGoal", {
    transform = {
      t = {
        11300.807,
        310.779,
        26457.563
      },
      r = quat.yrot(0)
    }
  })
  Game.ProcessMessage("LEVEL", "FixCamera", {
    eye = {
      11481.737,
      340.967,
      26526.881
    },
    target = {
      11274.117,
      403.057,
      26478.807
    }
  })
  _ARG_0_:ChangeState("clear")
end
function CrisisCity.Silver.GetRankTable(_ARG_0_)
  return {
    32000,
    30000,
    23000,
    18000
  }
end
