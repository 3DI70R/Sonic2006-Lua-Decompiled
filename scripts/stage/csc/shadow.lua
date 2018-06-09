CrisisCity.Shadow = inherits_from(ActionStage)
CrisisCity.Shadow.scripts = {
  "scripts/stage/csc/a_shadow.lua",
  "scripts/stage/csc/b_shadow.lua",
  "scripts/stage/csc/c_shadow.lua",
  "scripts/stage/csc/f_shadow.lua"
}
function CrisisCity.Shadow.constructor(_ARG_0_)
  ActionStage.constructor(_ARG_0_)
  Game.Log("construct CrisisCity.Shadow")
  _ARG_0_.areas = {
    ["Area A"] = CrisisCity.ShadowA,
    ["Area B"] = CrisisCity.ShadowB,
    ["Area C"] = CrisisCity.ShadowC,
    ["Area F"] = CrisisCity.ShadowF
  }
  _ARG_0_.area = "Area A"
end
function CrisisCity.Shadow.Setup(_ARG_0_)
  ActionStage.Setup(_ARG_0_)
  Game.Log("CrisisCity.Shadow:Setup")
  _ARG_0_:AddComponent({
    Game.LoadParticle("particle/map_csc.plc")
  })
end
function CrisisCity.Shadow.StageTitle(_ARG_0_)
  return CreateTask("stagetitle", {
    stagename = "CRISIS CITY"
  })
end
function CrisisCity.Shadow.PlayerReachesTheGoal(_ARG_0_, _ARG_1_)
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
function CrisisCity.Shadow.GetRankTable(_ARG_0_)
  return {
    27000,
    25000,
    20000,
    18000
  }
end
